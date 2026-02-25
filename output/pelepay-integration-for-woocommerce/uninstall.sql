-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pelepay_failure_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Payer PelePay address', 'Transaction ID', 'Payer first name', 'Payer last name');
DELETE FROM wp_usermeta WHERE meta_key IN ('Payer PelePay address', 'Transaction ID', 'Payer first name', 'Payer last name');
DELETE FROM wp_termmeta WHERE meta_key IN ('Payer PelePay address', 'Transaction ID', 'Payer first name', 'Payer last name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Payer PelePay address', 'Transaction ID', 'Payer first name', 'Payer last name');

