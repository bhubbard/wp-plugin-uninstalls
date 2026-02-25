-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visitorlog_run_quick_setup', 'visitorlog_err_tables', 'visitorlog_error_options', 'visitorlog_copy_images', 'visitorlog_copy_lang', 'visitorlog_count_options', 'visitorlog_count_tables');
DELETE FROM wp_options WHERE option_name LIKE 'visitorlog_captcha_string_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login_time');

