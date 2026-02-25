-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_email', 'Bambora Payment Receipt', '_order_total', '_order_key', 'CustNumber', 'Amount', 'Frequency', 'StartDate', 'enableEndDate', 'EndPaymentDate', 'EndPaymentCount', 'ScheduleID', 'enableEndPaymentCount', 'BatchID', 'Totaltransactions', 'Totalamount', 'Bambora Unique Batch Identifier');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_email', 'Bambora Payment Receipt', '_order_total', '_order_key', 'CustNumber', 'Amount', 'Frequency', 'StartDate', 'enableEndDate', 'EndPaymentDate', 'EndPaymentCount', 'ScheduleID', 'enableEndPaymentCount', 'BatchID', 'Totaltransactions', 'Totalamount', 'Bambora Unique Batch Identifier');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_email', 'Bambora Payment Receipt', '_order_total', '_order_key', 'CustNumber', 'Amount', 'Frequency', 'StartDate', 'enableEndDate', 'EndPaymentDate', 'EndPaymentCount', 'ScheduleID', 'enableEndPaymentCount', 'BatchID', 'Totaltransactions', 'Totalamount', 'Bambora Unique Batch Identifier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_email', 'Bambora Payment Receipt', '_order_total', '_order_key', 'CustNumber', 'Amount', 'Frequency', 'StartDate', 'enableEndDate', 'EndPaymentDate', 'EndPaymentCount', 'ScheduleID', 'enableEndPaymentCount', 'BatchID', 'Totaltransactions', 'Totalamount', 'Bambora Unique Batch Identifier');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'CustNumber_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'CustNumber_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'CustNumber_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'CustNumber_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Amount_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Amount_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Amount_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Amount_%';

