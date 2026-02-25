-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphhsecure_excluded_folders', 'wphhsecure_processed_batches', 'wphhsecure_total_batches', 'wphhsecure_site_lock_status', 'wphhsecure_site_failed_files', 'wphhsecure_custom_login_path', 'wphhsecure_progress');

