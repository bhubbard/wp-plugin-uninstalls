-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_app_json_secrets', 'wp_app_json_postcount', 'wp_app_json_thumburl', 'wp_app_json_header', 'wp_app_json_banner', 'wp_app_json_footer');

