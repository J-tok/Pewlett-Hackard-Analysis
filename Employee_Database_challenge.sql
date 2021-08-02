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

-- Retrieve employee Mentorship Elgibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
--  		INTO mentor_elg
FROM employees as e
		INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
		INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31' AND t.to_date = ('9999-01-01'))
ORDER BY emp_no;

SELECT * FROM retiring_titles
ORDER BY title;

SELECT COUNT(emp_no), title
FROM mentor_elg
GROUP BY title
ORDER BY title;