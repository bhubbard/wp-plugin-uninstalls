-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('landa_setting', 'landa_token', 'landa_db_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('landa_order_no', 'landa_order_id', 'landa_id', '_customer_user', 'landa_error', 'order_diff', 'landa_sync');
DELETE FROM wp_usermeta WHERE meta_key IN ('landa_order_no', 'landa_order_id', 'landa_id', '_customer_user', 'landa_error', 'order_diff', 'landa_sync');
DELETE FROM wp_termmeta WHERE meta_key IN ('landa_order_no', 'landa_order_id', 'landa_id', '_customer_user', 'landa_error', 'order_diff', 'landa_sync');
DELETE FROM wp_commentmeta WHERE meta_key IN ('landa_order_no', 'landa_order_id', 'landa_id', '_customer_user', 'landa_error', 'order_diff', 'landa_sync');

