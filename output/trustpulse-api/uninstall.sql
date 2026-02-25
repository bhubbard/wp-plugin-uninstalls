-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustpulse_script_id', 'trustpulse_script_enabled', 'trustpulse_intercept_duplicator_redirect', 'duplicator_redirect_to_welcome', 'wpforms_activation_redirect', 'aioseo_activation_redirect', 'wpforms_license', 'monsterinsights_license', 'optin_monster_api', 'trustpulse_api_plugin_do_activation_redirect', '_monsterinsights_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_last_checked';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notification_id', 'type', 'dismissable', 'location', 'version', 'viewed', 'expiration', 'plans', 'plugins', 'theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('notification_id', 'type', 'dismissable', 'location', 'version', 'viewed', 'expiration', 'plans', 'plugins', 'theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('notification_id', 'type', 'dismissable', 'location', 'version', 'viewed', 'expiration', 'plans', 'plugins', 'theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notification_id', 'type', 'dismissable', 'location', 'version', 'viewed', 'expiration', 'plans', 'plugins', 'theme');

