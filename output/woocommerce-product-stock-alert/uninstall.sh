#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifima_version'
wp option delete 'notifima_migration_running'
wp option delete 'notifima_cron_start'
wp option delete 'notifima_appearance_settings'
wp option delete 'notifima_form_submission_settings'
wp option delete 'notifima_email_settings'
wp option delete 'dc_product_stock_alert_activate'
wp option delete 'woo_product_stock_alert_activate'
wp option delete 'dc_woo_product_stock_alert_general_settings_name'
wp option delete 'mvx_woo_stock_alert_general_tab_settings'
wp option delete 'mvx_woo_stock_alert_form_customization_tab_settings'
wp option delete 'mvx_woo_stock_alert_form_submission_tab_settings'
wp option delete 'woo_product_stock_alert_version'
wp option delete 'woo_stock_alert_general_tab_settings'
wp option delete 'woo_stock_alert_form_customization_tab_settings'
wp option delete 'woo_stock_alert_form_submission_tab_settings'
wp option delete 'woo_stock_alert_email_tab_settings'
wp option delete 'dc_product_stock_alert_installed'
wp option delete 'woo_product_stock_alert_installed'
wp option delete 'woo_stock_manager_general_tab_settings'
wp option delete 'woo_stock_manager_form_submission_tab_settings'
wp option delete 'woo_stock_manager_email_tab_settings'
wp option delete 'woo_stock_manager_form_customization_tab_settings'
wp option delete 'woo_stock_manager_appearance_tab_settings'
wp option delete 'woo_stock_manager_mailchimp_tab_settings'
wp option delete 'notifima_mailchimp_settings'
wp option delete 'woo_stock_manager_version'
wp option delete 'notifima_installed'
wp option delete 'stock_manager_installed'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'notifima_start_subscriber_migration'
wp cron event delete 'notifima_start_notification_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_of_subscribers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_of_subscribers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_of_subscribers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_of_subscribers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_subscriber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_subscriber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_subscriber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_subscriber'"
