-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_new_order_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('CCAvenue Tracking ID', 'CCAvenue Bank Ref No', 'Payer first name', 'Payer last name', 'Payment type');
DELETE FROM wp_usermeta WHERE meta_key IN ('CCAvenue Tracking ID', 'CCAvenue Bank Ref No', 'Payer first name', 'Payer last name', 'Payment type');
DELETE FROM wp_termmeta WHERE meta_key IN ('CCAvenue Tracking ID', 'CCAvenue Bank Ref No', 'Payer first name', 'Payer last name', 'Payment type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('CCAvenue Tracking ID', 'CCAvenue Bank Ref No', 'Payer first name', 'Payer last name', 'Payment type');

