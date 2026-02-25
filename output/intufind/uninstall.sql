-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intufind_api_key', 'intufind_workspace_id', 'intufind_connection_verified', 'intufind_cloud_stats');
DELETE FROM wp_options WHERE option_name LIKE '%_taxonomy';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('intufind_dismissed_notices', '_elementor_edit_mode', '_elementor_data', '_fl_builder_enabled', '_fl_builder_data', 'thumbnail_id', 'display_type', 'product_attribute_color', 'pa_color', 'ta_color', 'product_attribute_image', 'ta_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('intufind_dismissed_notices', '_elementor_edit_mode', '_elementor_data', '_fl_builder_enabled', '_fl_builder_data', 'thumbnail_id', 'display_type', 'product_attribute_color', 'pa_color', 'ta_color', 'product_attribute_image', 'ta_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('intufind_dismissed_notices', '_elementor_edit_mode', '_elementor_data', '_fl_builder_enabled', '_fl_builder_data', 'thumbnail_id', 'display_type', 'product_attribute_color', 'pa_color', 'ta_color', 'product_attribute_image', 'ta_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('intufind_dismissed_notices', '_elementor_edit_mode', '_elementor_data', '_fl_builder_enabled', '_fl_builder_data', 'thumbnail_id', 'display_type', 'product_attribute_color', 'pa_color', 'ta_color', 'product_attribute_image', 'ta_image');

