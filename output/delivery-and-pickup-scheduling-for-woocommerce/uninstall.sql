-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpac_dps', 'active_sitewide_plugins', 'chwazi_db_version', 'lpac_dps_installed_at_version', 'lpac_dps_first_install_date', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lpac_dps_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('lpac_dps_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('lpac_dps_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lpac_dps_dismissed_notices');

