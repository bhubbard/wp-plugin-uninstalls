-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iup_do_sync_complete', 'iup_do_download_complete', 'iup_enabled', 'ms_files_rewriting', 'iup_files_scanned', 'cmplz_geo_ip_file', 'iup_scan_remaining_dirs', 'iup_excluded_files', 'iup_files_to_downloads', 'iup_dirs_to_downloads', 'iup_s3_next_token_to_download', 'iup_apitoken', 'iup_site_id', 'iup_api_data', 'iu_file_exclusion_enabled', 'iup_installed', 'iup_files_sync_progress', 'iup_files_download_progress', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

