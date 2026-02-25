-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exmage_background_process_image_kill_process', 'villatheme_hide_admin_toolbar', 'exmage_background_process_image_complete', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_kill_process';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_complete';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exmage_external_url', '_exmage_imported', '_vi_wad_image_id', '_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exmage_external_url', '_exmage_imported', '_vi_wad_image_id', '_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exmage_external_url', '_exmage_imported', '_vi_wad_image_id', '_wp_attachment_backup_sizes', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exmage_external_url', '_exmage_imported', '_vi_wad_image_id', '_wp_attachment_backup_sizes', '_wp_attached_file');

