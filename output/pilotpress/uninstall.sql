-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pilotpress_api_version', 'pilotpress-settings', 'ppprotectDbVersion', 'pilotpress_admin_preview', 'pilotpress_cache', 'pilotpress_tracking_url', 'pilotpress_tracking', 'pilotpress_login_failed');
DELETE FROM wp_options WHERE option_name LIKE 'usertags_%';
DELETE FROM wp_options WHERE option_name LIKE 'authenticate_user%';
DELETE FROM wp_options WHERE option_name LIKE 'login_url_pilotpress_user%';
DELETE FROM wp_options WHERE option_name LIKE 'pilotpress_redirect_to%';
DELETE FROM wp_options WHERE option_name LIKE 'pilotpress_recent_password_set%';
DELETE FROM wp_options WHERE option_name LIKE 'authenticate_user_pilotpress_user%';
DELETE FROM wp_options WHERE option_name LIKE 'pilotpress_throttle%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pilotpress_blocked', '_pilotpress_level', '_pilotpress_system_page', '_ppProtectCatOverride');
DELETE FROM wp_usermeta WHERE meta_key IN ('pilotpress_blocked', '_pilotpress_level', '_pilotpress_system_page', '_ppProtectCatOverride');
DELETE FROM wp_termmeta WHERE meta_key IN ('pilotpress_blocked', '_pilotpress_level', '_pilotpress_system_page', '_ppProtectCatOverride');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pilotpress_blocked', '_pilotpress_level', '_pilotpress_system_page', '_ppProtectCatOverride');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%redirect_location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%redirect_location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%redirect_location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%redirect_location';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%system_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%system_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%system_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%system_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level';

