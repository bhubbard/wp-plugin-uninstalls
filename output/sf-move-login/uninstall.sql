-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'movelogin_scan_phpversion', 'sfml', 'registration', 'movelogin_users-login_settings', 'movelogin_settings', 'movelogin_active_submodule_move-login', 'settings_errors', 'movelogin_updates_message', 'movelogin_is_https_supported', 'movelogin_active_submodules');
DELETE FROM wp_options WHERE option_name LIKE 'movelogin_active_submodule_%';
DELETE FROM wp_options WHERE option_name LIKE 'movelogin_unlock_admin_key-%';
DELETE FROM wp_options WHERE option_name LIKE 'movelogin_plugins_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'movelogin-notices-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('movelogin-blind-password', 'movelogin-password-needs-rehash');
DELETE FROM wp_usermeta WHERE meta_key IN ('movelogin-blind-password', 'movelogin-password-needs-rehash');
DELETE FROM wp_termmeta WHERE meta_key IN ('movelogin-blind-password', 'movelogin-password-needs-rehash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('movelogin-blind-password', 'movelogin-password-needs-rehash');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'movelogin-bad-mx-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'movelogin-bad-mx-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'movelogin-bad-mx-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'movelogin-bad-mx-%';

