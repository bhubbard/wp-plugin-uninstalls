-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('download_theme_popup_status', 'dtwap_dismissible_plugin', 'dtwap_dismissible_plugin_expiration', 'dtwap_enable_bookmark');

