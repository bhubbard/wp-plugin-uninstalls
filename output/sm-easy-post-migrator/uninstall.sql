-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smepm_settings', 'content_migration_pro_settings', 'content_migration_pro_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_migration_pro_intro_dismissed', 'content_migration_pro_credentials', 'smepm_upgrade_hidden', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_migration_pro_intro_dismissed', 'content_migration_pro_credentials', 'smepm_upgrade_hidden', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_migration_pro_intro_dismissed', 'content_migration_pro_credentials', 'smepm_upgrade_hidden', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_migration_pro_intro_dismissed', 'content_migration_pro_credentials', 'smepm_upgrade_hidden', '_wp_attachment_image_alt');

