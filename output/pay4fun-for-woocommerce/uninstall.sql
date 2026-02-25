-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p4f_options', 'p4f_db_version', 'woocommerce_pay4fun_settings', 'widget_wp_p4fdonationswidget');

