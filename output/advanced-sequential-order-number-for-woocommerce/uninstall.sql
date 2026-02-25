-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_order_number_enable_plugin', 'wc_settings_order_number_order_prefix', 'wc_settings_order_number_order_suffix', 'wc_settings_order_number_counter', 'wc_settings_order_number_order_format', 'wc_settings_order_number_width', 'wc_settings_order_number_start_order_number');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('new_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('new_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('new_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('new_order_id');

