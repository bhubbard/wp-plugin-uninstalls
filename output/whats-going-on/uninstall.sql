-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgo_notify_requests_less_than_x_percent', 'wgo_days_to_store', 'wgo_db_version', 'wgo_limit_requests_per_minute', 'wgo_limit_requests_per_hour', 'wgo_im_behind_proxy', 'wgo_notification_email', 'wgo_save_payloads', 'wgo_save_payloads_matching_uri_regex', 'wgo_save_payloads_matching_payload_regex', 'wgo_notify_requests_more_than_sd', 'wgo_notify_requests_more_than_2sd', 'wgo_notify_requests_more_than_3sd', 'wgo_autoreload_datatables', 'wgo_waf_installed');

