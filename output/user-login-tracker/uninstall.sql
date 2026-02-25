-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultk_db_version', 'ultk_track_user_roles', 'ultk_history_retention_days', 'ultk_track_admin_logins', 'ultk_enable_dashboard_widget', 'ultk_inactive_user_threshold', 'ultk_date_format', 'ultk_time_format', 'ultk_migration_notice');
DELETE FROM wp_options WHERE option_name LIKE 'ultk_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ultk_last_login_time', 'ultk_login_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('ultk_last_login_time', 'ultk_login_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('ultk_last_login_time', 'ultk_login_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ultk_last_login_time', 'ultk_login_count');

