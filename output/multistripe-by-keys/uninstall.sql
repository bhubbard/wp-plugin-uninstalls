-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('number_vendor_option', 'vendors_ids', 'list_products_selected', 'is_activate_test_option', 'is_activate_live_option');
DELETE FROM wp_options WHERE option_name LIKE 'vendor_name_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'vendor_list_product_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'vendor_pk_live_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'vendor_sk_live_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'vendor_pk_test_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'vendor_sk_test_option_%';

