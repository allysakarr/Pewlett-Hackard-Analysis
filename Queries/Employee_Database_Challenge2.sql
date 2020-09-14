-- Make retirement titles csv
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO deliverable_one
FROM employees as e
INNER JOIN titles
ON e.emp_no = titles.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM deliverable_one as rt
ORDER BY emp_no, rt.title DESC;

-- Make retirement titles csv
SELECT COUNT (title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(title) DESC;

-- Deliverable 2 - Joining
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
INTO deliverable_two
FROM employees as e 
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles
ON (e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;