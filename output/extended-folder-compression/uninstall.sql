-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tinypng_api_key', 'efctin_processed_images', 'efctin_log', 'efctin_log_ct', 'efctin_log_mb', 'efctin_days', 'efctin_target_folder', 'efctin_auto_hours', 'efctin_auto', 'efctin_next_run');

