#!/usr/bin/env python3
import cgi, cgitb, sqlite3, os, sys, urllib.request
cgitb.enable()

DB_PATH = "/var/www/html/db/sample.sqlite3"  # <-- Change to your DB path

print("Content-Type: text/html; charset=utf-8")
print()


def run_sql_script(sql):
    try:
        with sqlite3.connect(DB_PATH) as conn:
            conn.executescript(sql)
        return "✅ SQL executed successfully."
    except Exception as e:
        return f"❌ Error: {e}"


form = cgi.FieldStorage()
result_msg = "⚠️ No valid input provided."

# 1️⃣ Execute SQL from URL
if "sql_url" in form and form.getvalue("sql_url"):
    url = form.getvalue("sql_url")
    try:
        sql = urllib.request.urlopen(url).read().decode()
        result_msg = run_sql_script(sql)
    except Exception as e:
        result_msg = f"❌ Failed to fetch URL: {e}"

# 2️⃣ Execute SQL from uploaded file
elif "sql_file" in form and form["sql_file"].file:
    try:
        sql = form["sql_file"].file.read().decode()
        result_msg = run_sql_script(sql)
    except Exception as e:
        result_msg = f"❌ Failed to read uploaded file: {e}"

# 3️⃣ Execute SQL from textarea
elif "sql_text" in form and form.getvalue("sql_text"):
    sql = form.getvalue("sql_text")
    result_msg = run_sql_script(sql)

# Output simple HTML result
print(f"""
<html><body style="font-family: sans-serif; margin: 40px;">
<h2>Multi SQL Executor - Result</h2>
<p>{result_msg}</p>
<p><a href="../multi_sql.html">← Back</a></p>
</body></html>
""")

