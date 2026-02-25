-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_swatches_plugin_version', 'gs_swatches_permalinks_flushed', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_attribute_image', 'product_attribute_color', 'variable_swatches_settings', 'is_dual_color', 'secondary_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_attribute_image', 'product_attribute_color', 'variable_swatches_settings', 'is_dual_color', 'secondary_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_attribute_image', 'product_attribute_color', 'variable_swatches_settings', 'is_dual_color', 'secondary_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_attribute_image', 'product_attribute_color', 'variable_swatches_settings', 'is_dual_color', 'secondary_color');

