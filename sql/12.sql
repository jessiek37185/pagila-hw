/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT payment.customer_id, customer.first_name, customer.last_name, SUM(amount) AS sum
FROM payment, customer
WHERE customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY last_name ASC;
