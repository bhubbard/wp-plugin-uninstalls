-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_maintenance_settings_countdown', 'wp_maintenance_settings_colors', 'wp_maintenance_active', 'wp_maintenance_version', 'wp_maintenance_settings_css', 'wp_maintenance_settings', 'wp_maintenance_settings_picture', 'wp_maintenance_settings_seo', 'wp_maintenance_settings_socialnetworks', 'wp_maintenance_list_socialnetworks', 'wp_maintenance_settings_footer', 'wp_maintenance_settings_options', 'wp_maintenance_limit', 'wp_maintenance_social_options', 'wp_maintenance_ipaddresses', 'default_post_edit_rows');

