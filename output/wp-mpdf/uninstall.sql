-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpdf_theme', 'mpdf_geshi', 'mpdf_geshi_linenumbers', 'mpdf_caching', 'mpdf_allow_all', 'mpdf_need_login', 'mpdf_stats', 'mpdf_debug', 'mpdf_cron_user', 'mpdf_code_page');

