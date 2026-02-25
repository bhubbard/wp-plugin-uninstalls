-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payhere_settings', 'woocommerce_myaccount_page_id', 'payhere_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('payhere_customer_token', 'payhere_customer_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('payhere_customer_token', 'payhere_customer_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('payhere_customer_token', 'payhere_customer_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('payhere_customer_token', 'payhere_customer_data');

