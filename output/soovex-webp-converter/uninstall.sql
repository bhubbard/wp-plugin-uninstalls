-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webp_cp_backup_reminder', 'webp_cp_backup_deletion_duration', 'webp_cp_backup_deletion_date', 'webp_cp_enable_backup', 'webp_cp_auto_convert', 'webp_cp_lazy_load', 'webp_cp_compression_quality', 'webp_cp_serve_webp', 'webp_cp_custom_duration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webp_cp_backup_reminder_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('webp_cp_backup_reminder_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('webp_cp_backup_reminder_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webp_cp_backup_reminder_dismissed');

