-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cel_new_logs', 'cel_ab_show', 'custom_error_log', 'custom_notice_log');
DELETE FROM wp_options WHERE option_name LIKE '%_log';

