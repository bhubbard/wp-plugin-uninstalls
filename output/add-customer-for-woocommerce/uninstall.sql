-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wac_general_options', 'wac_add_customer', 'wac_add_customer_count', 'wac_edit_customer_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_custom_field_1', 'wac_created_by_plugin', 'wac_created_by_plugin_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_custom_field_1', 'wac_created_by_plugin', 'wac_created_by_plugin_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_custom_field_1', 'wac_created_by_plugin', 'wac_created_by_plugin_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_custom_field_1', 'wac_created_by_plugin', 'wac_created_by_plugin_time');

