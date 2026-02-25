-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bulk_alt_text_processing', 'altgen_attachments_jobs', 'bdaiatg_bulk_generating', 'error_during_background_task_no_credit', 'altgen_last_bulk_stats', 'csf_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_focuskw', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_focuskw', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_focuskw', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_focuskw', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

