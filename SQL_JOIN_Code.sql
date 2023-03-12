/*
Join tables from home_credit
to use as DataFrame for loan_elegibility project
*/

USE home_credit;

# Pull the data dictionary with 219 entries
SELECT * FROM data_dictionary;

# Pull the 48_744 current applications to be used as test 
SELECT * FROM current_applications;

SELECT * FROM application_history
LEFT JOIN bureau USING(SK_ID_CURR)
LEFT JOIN bureau_balance USING(SK_ID_BUREAU)
LEFT JOIN pos_cash_balance USING(SK_ID_CURR)
LEFT JOIN credit_card_balance USING(SK_ID_CURR)
LEFT JOIN client_previous_application USING(SK_ID_CURR)
LEFT JOIN installment_payments USING(SK_ID_CURR);

