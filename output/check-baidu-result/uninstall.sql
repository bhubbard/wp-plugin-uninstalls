-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('check_baidu_result_get_name', 'check_baidu_result_show_to');

