<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifima_version');
delete_site_option('notifima_version');
delete_option('notifima_migration_running');
delete_site_option('notifima_migration_running');
delete_option('notifima_cron_start');
delete_site_option('notifima_cron_start');
delete_option('notifima_appearance_settings');
delete_site_option('notifima_appearance_settings');
delete_option('notifima_form_submission_settings');
delete_site_option('notifima_form_submission_settings');
delete_option('notifima_email_settings');
delete_site_option('notifima_email_settings');
delete_option('dc_product_stock_alert_activate');
delete_site_option('dc_product_stock_alert_activate');
delete_option('woo_product_stock_alert_activate');
delete_site_option('woo_product_stock_alert_activate');
delete_option('dc_woo_product_stock_alert_general_settings_name');
delete_site_option('dc_woo_product_stock_alert_general_settings_name');
delete_option('mvx_woo_stock_alert_general_tab_settings');
delete_site_option('mvx_woo_stock_alert_general_tab_settings');
delete_option('mvx_woo_stock_alert_form_customization_tab_settings');
delete_site_option('mvx_woo_stock_alert_form_customization_tab_settings');
delete_option('mvx_woo_stock_alert_form_submission_tab_settings');
delete_site_option('mvx_woo_stock_alert_form_submission_tab_settings');
delete_option('woo_product_stock_alert_version');
delete_site_option('woo_product_stock_alert_version');
delete_option('woo_stock_alert_general_tab_settings');
delete_site_option('woo_stock_alert_general_tab_settings');
delete_option('woo_stock_alert_form_customization_tab_settings');
delete_site_option('woo_stock_alert_form_customization_tab_settings');
delete_option('woo_stock_alert_form_submission_tab_settings');
delete_site_option('woo_stock_alert_form_submission_tab_settings');
delete_option('woo_stock_alert_email_tab_settings');
delete_site_option('woo_stock_alert_email_tab_settings');
delete_option('dc_product_stock_alert_installed');
delete_site_option('dc_product_stock_alert_installed');
delete_option('woo_product_stock_alert_installed');
delete_site_option('woo_product_stock_alert_installed');
delete_option('woo_stock_manager_general_tab_settings');
delete_site_option('woo_stock_manager_general_tab_settings');
delete_option('woo_stock_manager_form_submission_tab_settings');
delete_site_option('woo_stock_manager_form_submission_tab_settings');
delete_option('woo_stock_manager_email_tab_settings');
delete_site_option('woo_stock_manager_email_tab_settings');
delete_option('woo_stock_manager_form_customization_tab_settings');
delete_site_option('woo_stock_manager_form_customization_tab_settings');
delete_option('woo_stock_manager_appearance_tab_settings');
delete_site_option('woo_stock_manager_appearance_tab_settings');
delete_option('woo_stock_manager_mailchimp_tab_settings');
delete_site_option('woo_stock_manager_mailchimp_tab_settings');
delete_option('notifima_mailchimp_settings');
delete_site_option('notifima_mailchimp_settings');
delete_option('woo_stock_manager_version');
delete_site_option('woo_stock_manager_version');
delete_option('notifima_installed');
delete_site_option('notifima_installed');
delete_option('stock_manager_installed');
delete_site_option('stock_manager_installed');
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('notifima_start_subscriber_migration');
wp_clear_scheduled_hook('notifima_start_notification_cron_job');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'no_of_subscribers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'no_of_subscribers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'no_of_subscribers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'no_of_subscribers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_subscriber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_subscriber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_subscriber' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_subscriber' ) );

