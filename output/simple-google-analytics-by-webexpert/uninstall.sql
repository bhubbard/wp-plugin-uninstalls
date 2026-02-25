-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('we_we_google_analytics_pro_general_settings_name', 'we_we_google_analytics_pro_gacode_settings_name');

