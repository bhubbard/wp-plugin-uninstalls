-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pfg_filters', 'awl_portfolio_filter_gallery_categories', 'pfg_last_backup', 'pfg_global_settings', 'pfg_last_backup_date', 'pfg_filters_legacy_backup', 'pfg_migration_log', 'pfg_installed_version', 'pfg_previous_version', 'pfg_first_installed_version', 'pfg_version_timestamp', 'pfg_db_version', 'pfg_show_tour', 'pfg_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pfg_images', '_wp_attachment_image_alt', '_pfg_migration_completed', '_pfg_settings', '_pfg_migrated', '_pfg_legacy_backup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pfg_images', '_wp_attachment_image_alt', '_pfg_migration_completed', '_pfg_settings', '_pfg_migrated', '_pfg_legacy_backup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pfg_images', '_wp_attachment_image_alt', '_pfg_migration_completed', '_pfg_settings', '_pfg_migrated', '_pfg_legacy_backup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pfg_images', '_wp_attachment_image_alt', '_pfg_migration_completed', '_pfg_settings', '_pfg_migrated', '_pfg_legacy_backup');

