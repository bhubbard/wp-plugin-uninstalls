-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdpa_thailand_settings', 'pdpa_thailand_msg', 'pdpa_thailand_cookies', 'pdpa_thailand_appearance', 'pdpa_thailand_js_version', 'pdpa_thailand_css_version', 'pdpa_thailand_installed', 'pdpa_thailand_advanced', 'pdpa_thailand_license_status', 'pdpa_thailand_license_key', 'pdpa_thailand_script', 'pdpa_thailand_style', 'pdpa_thailand_rating');

