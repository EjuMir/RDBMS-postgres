What is PostgreSQL?
-> PostgreSQL হলো একটা ওপেন-সোর্স ডাটাবেস ম্যানেজমেন্ট সিস্টেম

What is the purpose of a database schema in PostgreSQL?

-> একটা ডাটাবেসে প্রচুর টেবিল, ভিউ, ফাংশন ইত্যাদি থাকতে পারে। এগুলো সুন্দরভাবে গুছিয়ে রাখতে স্কিমা (Schema) ব্যবহার করা হয়।

Explain the Primary Key and Foreign Key concepts in PostgreSQL.

-> Primary Key: এটা একটা টেবিলের এমন একটা কলাম যা প্রতিটা রেকর্ডকে ইউনিকভাবে চিহ্নিত করে।

Foreign Key: এটা একটা টেবিলের এমন একটা কলাম, যেটা অন্য কোনো টেবিলের প্রাইমারি কী কে রেফার করে।

What is the difference between the VARCHAR and CHAR data types?

-> VARCHAR: এই ডাটাটাইপ পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং রাখে।
CHAR(n): এটা স্থির দৈর্ঘ্যের স্ট্রিং রাখে।

Explain the purpose of the WHERE clause in a SELECT statement.

ডাটাবেস থেকে নির্দিষ্ট কিছু ডাটা বের করতে WHERE ক্লজ ব্যবহার করতে হবে।

What are the LIMIT and OFFSET clauses used for?

-> LIMIT: কতগুলো রেকর্ড দেখাবে, সেটা নির্দিষ্ট করে।
OFFSET: শুরুতে কতগুলো রেকর্ড বাদ দেবে, সেটার জন্য।

How can you modify data using UPDATE statements?

-> ডাটাবেসে কোনো তথ্য পরিবর্তন করতে UPDATE ব্যবহার করতে হবে।

What is the significance of the JOIN operation, and how does it work in PostgreSQL?

-> যখন একাধিক টেবিলের ডাটা একসাথে আনতে হয়, তখন JOIN ব্যবহার করা হয়।

Explain the GROUP BY clause and its role in aggregation operations.

-> যখন একধরনের ডাটা গ্রুপ করে তার উপর কোনো অ্যাগ্রিগেট ফাংশন (COUNT, SUM) প্রয়োগ করতে হয়, তখন GROUP BY ব্যবহার করা হয়।

How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

-> COUNT(): কতগুলো রেকর্ড আছে, সেটা গণনা করে।
SUM(): নির্দিষ্ট কলামের সব সংখ্যার যোগফল দেখায়।
AVG(): নির্দিষ্ট কলামের গড় মান বের করে।

