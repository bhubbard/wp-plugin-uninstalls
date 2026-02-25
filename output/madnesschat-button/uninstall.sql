-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcnb_basic_options', 'mcnb_basic_last_settings_update', 'mcnb_db_version', 'mcnb_realtime_stats', 'mcnb_security_logs', 'mcnb_options', 'mcnb_basic_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mcnb_last_save');
DELETE FROM wp_usermeta WHERE meta_key IN ('mcnb_last_save');
DELETE FROM wp_termmeta WHERE meta_key IN ('mcnb_last_save');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mcnb_last_save');

