-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_copy_do_activation_redirect', 'sc_api_key', 'seocopy_apikey_setting', 'seocopy_language', 'wp_seo_plugins_user_display_name', 'wp_seo_plugins_user_email');

