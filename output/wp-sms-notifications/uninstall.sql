-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sms_on_post_publish', 'wp_sms_on_user_login', 'wp_sms_on_plugin_update', 'wp_sms_on_plugin_install', 'wp_sms_on_post_update', 'wp_sms_on_theme_install', 'wp_sms_on_theme_update');

