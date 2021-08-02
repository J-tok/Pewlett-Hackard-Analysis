SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
		INTO deliverable_one
FROM employees AS e
		INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_Date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
	INTO deliverable_unique_titles
FROM deliverable_one as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Retrieve number of employees by most recent title who are about to retire
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM deliverable_unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;