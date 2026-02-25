-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WC_Settings_Tab_BLZ_BCL_cus_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_average', '_order_count', '_money_spent', 'billing_first_name', 'billing_last_name', 'customer_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_average', '_order_count', '_money_spent', 'billing_first_name', 'billing_last_name', 'customer_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_average', '_order_count', '_money_spent', 'billing_first_name', 'billing_last_name', 'customer_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_average', '_order_count', '_money_spent', 'billing_first_name', 'billing_last_name', 'customer_status');

