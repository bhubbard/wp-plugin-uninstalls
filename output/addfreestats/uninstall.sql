-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afs_analytics_oauth_state', 'afsa_db_schema_version', 'afsa_paa_rc', 'afs_account', 'afs_accesskey', 'afs_admin_pages_tracking', 'afs_self_visits_hidden', 'afs_user_logged_tracking', 'afs_udisplay_admin_summary', 'afs_gravatar_profile_enabled', 'afs_cookie_setting', 'afs_ip_setting', 'afs_user_consent', 'afs_localization_setting', 'afsa_settings_main', 'afsa_settings_privacy', 'afsa_settings_autotrack', 'afsa_settings_woo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('afstrackername');
DELETE FROM wp_usermeta WHERE meta_key IN ('afstrackername');
DELETE FROM wp_termmeta WHERE meta_key IN ('afstrackername');
DELETE FROM wp_commentmeta WHERE meta_key IN ('afstrackername');

