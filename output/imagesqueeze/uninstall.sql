-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagesqueeze_optimization_log', 'imagesqueeze_last_run_summary', 'imagesqueeze_current_job', 'imagesqueeze_total_saved_bytes', 'imagesqueeze_last_run_time', 'imagesqueeze_settings', 'imagesqueeze_job_queue', 'imagesqueeze_using_filters');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_imagesqueeze_status', '_imagesqueeze_error_message', '_imagesqueeze_last_attempt', '_imagesqueeze_optimized', '_imagesqueeze_webp_sizes', '_imagesqueeze_saved_bytes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_imagesqueeze_status', '_imagesqueeze_error_message', '_imagesqueeze_last_attempt', '_imagesqueeze_optimized', '_imagesqueeze_webp_sizes', '_imagesqueeze_saved_bytes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_imagesqueeze_status', '_imagesqueeze_error_message', '_imagesqueeze_last_attempt', '_imagesqueeze_optimized', '_imagesqueeze_webp_sizes', '_imagesqueeze_saved_bytes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_imagesqueeze_status', '_imagesqueeze_error_message', '_imagesqueeze_last_attempt', '_imagesqueeze_optimized', '_imagesqueeze_webp_sizes', '_imagesqueeze_saved_bytes');

