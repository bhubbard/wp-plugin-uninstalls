-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tracknow_for_woocommerce_debug_logs', 'tracknow_logs_table_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracknow_click_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracknow_click_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracknow_click_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracknow_click_id');

