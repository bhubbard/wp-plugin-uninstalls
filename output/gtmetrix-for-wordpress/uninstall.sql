-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfw_options', 'admin_notice', 'credit_status', 'latest_news');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gfw_last_report', 'gfw_last_report_id', 'gfw_event_error', 'gfw_status', 'gfw_url', 'gfw_label', 'gfw_location', 'gfw_adblock', 'gfw_recurrence', 'gfw_notifications', 'gfw_video', 'gfw_event_id', 'gtmetrix_test_id', 'page_load_time', 'fully_loaded_time', 'html_bytes', 'page_elements', 'report_url', 'html_load_time', 'page_bytes', 'pagespeed_score', 'yslow_score', 'gtmetrix_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('gfw_last_report', 'gfw_last_report_id', 'gfw_event_error', 'gfw_status', 'gfw_url', 'gfw_label', 'gfw_location', 'gfw_adblock', 'gfw_recurrence', 'gfw_notifications', 'gfw_video', 'gfw_event_id', 'gtmetrix_test_id', 'page_load_time', 'fully_loaded_time', 'html_bytes', 'page_elements', 'report_url', 'html_load_time', 'page_bytes', 'pagespeed_score', 'yslow_score', 'gtmetrix_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('gfw_last_report', 'gfw_last_report_id', 'gfw_event_error', 'gfw_status', 'gfw_url', 'gfw_label', 'gfw_location', 'gfw_adblock', 'gfw_recurrence', 'gfw_notifications', 'gfw_video', 'gfw_event_id', 'gtmetrix_test_id', 'page_load_time', 'fully_loaded_time', 'html_bytes', 'page_elements', 'report_url', 'html_load_time', 'page_bytes', 'pagespeed_score', 'yslow_score', 'gtmetrix_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gfw_last_report', 'gfw_last_report_id', 'gfw_event_error', 'gfw_status', 'gfw_url', 'gfw_label', 'gfw_location', 'gfw_adblock', 'gfw_recurrence', 'gfw_notifications', 'gfw_video', 'gfw_event_id', 'gtmetrix_test_id', 'page_load_time', 'fully_loaded_time', 'html_bytes', 'page_elements', 'report_url', 'html_load_time', 'page_bytes', 'pagespeed_score', 'yslow_score', 'gtmetrix_error');

