-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resmushit_on_upload', 'resmushit_qlty', 'resmushit_statistics', 'resmushit_logs', 'resmushit_cron', 'resmushit_preserve_exif', 'resmushit_remove_unsmushed', 'resmushit_notice_close', 'resmushit_has_no_backup_files', 'resmushit_cron_firstactivation', 'resmushit_cron_lastaction', 'resmushit_cron_lastrun', 'resmushit_total_optimized', 'resmushit_notice_close_eoldec23');
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('resmushed_quality', 'resmushed_cumulated_original_sizes', 'resmushed_cumulated_optimized_sizes', '_wp_attachment_metadata', 'resmushed_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('resmushed_quality', 'resmushed_cumulated_original_sizes', 'resmushed_cumulated_optimized_sizes', '_wp_attachment_metadata', 'resmushed_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('resmushed_quality', 'resmushed_cumulated_original_sizes', 'resmushed_cumulated_optimized_sizes', '_wp_attachment_metadata', 'resmushed_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('resmushed_quality', 'resmushed_cumulated_original_sizes', 'resmushed_cumulated_optimized_sizes', '_wp_attachment_metadata', 'resmushed_disabled');

