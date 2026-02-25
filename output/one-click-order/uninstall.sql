-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oneclickorder_settings', 'oneclickorder_order_page_id', 'oneclickorder_manual_orders_log', 'oneclickorder_report_email', 'oneclickorder_order_count', 'oneclickorder_last_reset', 'oneclickorder_install_date', 'oneclickorder_start_date');

