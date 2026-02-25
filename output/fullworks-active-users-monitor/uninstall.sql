-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fwaum_settings', 'fwaum_audit_migration_done', 'fwaum_network_settings', 'fwaum_online_users_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fwaum_session_start', 'fwaum_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('fwaum_session_start', 'fwaum_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('fwaum_session_start', 'fwaum_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fwaum_session_start', 'fwaum_last_login');

