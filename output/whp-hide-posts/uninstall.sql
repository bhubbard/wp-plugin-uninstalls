-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whp_disable_hidden_on_column', 'whp_enabled_post_types', 'whp_data_migrated', 'whp_data_migrated_notice_closed', 'whp_db_version', 'whp_migration_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_whp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_whp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_whp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_whp_%';

