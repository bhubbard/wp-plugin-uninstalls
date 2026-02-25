-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_watermark_options', 'image_watermark_version', 'image_watermark_activation_date', 'df_watermark_installed', 'version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_iw_backup_watermark_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_iw_backup_watermark_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_iw_backup_watermark_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_iw_backup_watermark_id');

