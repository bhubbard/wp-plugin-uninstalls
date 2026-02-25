-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sliced_tax', 'sliced_invoices', 'sliced_quotes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sliced_description', '_sliced_number', '_sliced_order_number', '_sliced_invoice_due', '_sliced_quote_valid_until', '_sliced_tax_calc_method', '_sliced_tax', '_sliced_tax_name', '_sliced_additional_tax_name', '_sliced_additional_tax_rate', '_sliced_additional_tax_type', '_sliced_payment_methods', '_sliced_items', 'first_name', 'last_name', '_sliced_client_business', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_client');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sliced_description', '_sliced_number', '_sliced_order_number', '_sliced_invoice_due', '_sliced_quote_valid_until', '_sliced_tax_calc_method', '_sliced_tax', '_sliced_tax_name', '_sliced_additional_tax_name', '_sliced_additional_tax_rate', '_sliced_additional_tax_type', '_sliced_payment_methods', '_sliced_items', 'first_name', 'last_name', '_sliced_client_business', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_client');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sliced_description', '_sliced_number', '_sliced_order_number', '_sliced_invoice_due', '_sliced_quote_valid_until', '_sliced_tax_calc_method', '_sliced_tax', '_sliced_tax_name', '_sliced_additional_tax_name', '_sliced_additional_tax_rate', '_sliced_additional_tax_type', '_sliced_payment_methods', '_sliced_items', 'first_name', 'last_name', '_sliced_client_business', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_client');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sliced_description', '_sliced_number', '_sliced_order_number', '_sliced_invoice_due', '_sliced_quote_valid_until', '_sliced_tax_calc_method', '_sliced_tax', '_sliced_tax_name', '_sliced_additional_tax_name', '_sliced_additional_tax_rate', '_sliced_additional_tax_type', '_sliced_payment_methods', '_sliced_items', 'first_name', 'last_name', '_sliced_client_business', '_sliced_client_address', '_sliced_client_extra_info', '_sliced_client');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_created';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_prefix';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_suffix';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_terms';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_terms';

