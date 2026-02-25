-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edubzl_delete_data_on_uninstall', 'edubzl_notes', 'edubzl_logs', 'edubzl_batch_size', 'edubzl_batch_interval', 'edubzl_max_attempts', 'edubzl_queue_enabled', 'edubzl_cleanup_queue_days', 'edubzl_test_mode', 'edubzl_last_job_id', 'edubzl_cron_processing');

