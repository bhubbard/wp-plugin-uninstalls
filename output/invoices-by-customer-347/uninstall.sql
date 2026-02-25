-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcpdf_invoice_date_formatted', 'NIF', '_wcpdf_invoice_number', '_order_total', '_billing_company', '_billing_first_name', '_billing_last_name', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcpdf_invoice_date_formatted', 'NIF', '_wcpdf_invoice_number', '_order_total', '_billing_company', '_billing_first_name', '_billing_last_name', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcpdf_invoice_date_formatted', 'NIF', '_wcpdf_invoice_number', '_order_total', '_billing_company', '_billing_first_name', '_billing_last_name', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcpdf_invoice_date_formatted', 'NIF', '_wcpdf_invoice_number', '_order_total', '_billing_company', '_billing_first_name', '_billing_last_name', '_customer_user');

