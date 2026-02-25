-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appp_deprecate_ver', 'appp_settings_ver', 'myapp_disable_remote_updates', 'appp_logging_timeout', 'appplog_filename', 'ap2-remote-js', 'appp_settings', 'active_sitewide_plugins', 'recently_activated', '_welcome_screen_activation_redirect', 'apppresser_update_plugins', 'apppresser_plugin_check', 'apppresser_plugin_update_json', 'apppresser_update_themes', 'apppresser_theme_check', 'apppresser_theme_update_json', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%limited_data';
DELETE FROM wp_options WHERE option_name LIKE 'appp_license_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('app_hash', 'appp_media_url', 'app_cookie_auth', 'appp_media_image', 'app_unverified', 'app_verification_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('app_hash', 'appp_media_url', 'app_cookie_auth', 'appp_media_image', 'app_unverified', 'app_verification_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('app_hash', 'appp_media_url', 'app_cookie_auth', 'appp_media_image', 'app_unverified', 'app_verification_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('app_hash', 'appp_media_url', 'app_cookie_auth', 'appp_media_image', 'app_unverified', 'app_verification_code');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

