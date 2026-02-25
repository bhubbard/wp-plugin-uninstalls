-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssing_date_format', 'ssing_dashboard_widget_flag', 'ssign_notice', 'swiftsign_pages');
DELETE FROM wp_options WHERE option_name LIKE '%dashboard_subscribe';

