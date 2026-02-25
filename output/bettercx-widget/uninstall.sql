-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bettercx_widget_settings', 'bettercx_widget_version', 'bettercx_widget_cache', 'bettercx_widget_connection_test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'bettercx_widget_user_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'bettercx_widget_user_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'bettercx_widget_user_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'bettercx_widget_user_preferences');

