-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aeii_options', 'aeii_background_running', 'aeii_scan_results', 'aeii_queue_position', 'aeii_url_cache', 'aeii_archive_error', 'aeii_archive_error_time', 'aeii_archive_429_retries', 'aeii_success_count', 'aeii_cached_count', 'aeii_failed_count', 'aeii_removed_count', 'aeii_placeholder_count', 'aeii_images_process_process_lock', 'aeii_images_process_completed');
DELETE FROM wp_options WHERE option_name LIKE 'aeii_idx_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_completed';

