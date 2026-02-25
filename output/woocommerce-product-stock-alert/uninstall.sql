-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifima_version', 'notifima_migration_running', 'notifima_cron_start', 'notifima_appearance_settings', 'notifima_form_submission_settings', 'notifima_email_settings', 'dc_product_stock_alert_activate', 'woo_product_stock_alert_activate', 'dc_woo_product_stock_alert_general_settings_name', 'mvx_woo_stock_alert_general_tab_settings', 'mvx_woo_stock_alert_form_customization_tab_settings', 'mvx_woo_stock_alert_form_submission_tab_settings', 'woo_product_stock_alert_version', 'woo_stock_alert_general_tab_settings', 'woo_stock_alert_form_customization_tab_settings', 'woo_stock_alert_form_submission_tab_settings', 'woo_stock_alert_email_tab_settings', 'dc_product_stock_alert_installed', 'woo_product_stock_alert_installed', 'woo_stock_manager_general_tab_settings', 'woo_stock_manager_form_submission_tab_settings', 'woo_stock_manager_email_tab_settings', 'woo_stock_manager_form_customization_tab_settings', 'woo_stock_manager_appearance_tab_settings', 'woo_stock_manager_mailchimp_tab_settings', 'notifima_mailchimp_settings', 'woo_stock_manager_version', 'notifima_installed', 'stock_manager_installed', 'woocommerce_notify_no_stock_amount', 'woocommerce_prices_include_tax', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('no_of_subscribers', '_product_subscriber');
DELETE FROM wp_usermeta WHERE meta_key IN ('no_of_subscribers', '_product_subscriber');
DELETE FROM wp_termmeta WHERE meta_key IN ('no_of_subscribers', '_product_subscriber');
DELETE FROM wp_commentmeta WHERE meta_key IN ('no_of_subscribers', '_product_subscriber');

