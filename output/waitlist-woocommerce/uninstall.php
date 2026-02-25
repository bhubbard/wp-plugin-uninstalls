<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xoo-wl-list-view');
delete_site_option('xoo-wl-list-view');
delete_option('xoo_wl_cron_working');
delete_site_option('xoo_wl_cron_working');
delete_option('xoo-wl-gl-enqty');
delete_site_option('xoo-wl-gl-enqty');
delete_option('xoo-wl-import-started-notice');
delete_site_option('xoo-wl-import-started-notice');
delete_option('xoo-wl-import-in-progress');
delete_site_option('xoo-wl-import-in-progress');
delete_option('xoo-wl-import-success');
delete_site_option('xoo-wl-import-success');
delete_option('xoo_wl_crons_in_queue');
delete_site_option('xoo_wl_crons_in_queue');
delete_option('xoo-wl-schedule-crons');
delete_site_option('xoo-wl-schedule-crons');
delete_option('xoo_wl_cron_emails');
delete_site_option('xoo_wl_cron_emails');
delete_option('xoo-wl-cron-cleanup-last-check');
delete_site_option('xoo-wl-cron-cleanup-last-check');
delete_option('xoo-wl-version');
delete_site_option('xoo-wl-version');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('xoo_tracking_consent_waitlist-woocommerce');
delete_site_option('xoo_tracking_consent_waitlist-woocommerce');
delete_option('xoo-wl-general-options');
delete_site_option('xoo-wl-general-options');
delete_option('xoo-wl-email-options');
delete_site_option('xoo-wl-email-options');
delete_option('xoo-wl-style-options');
delete_site_option('xoo-wl-style-options');
delete_option('xoo_wl_cron_test_count');
delete_site_option('xoo_wl_cron_test_count');
delete_option('xoo-wl-gl-enguest');
delete_site_option('xoo-wl-gl-enguest');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'xoo_tracking_consent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'xoo_plugin_deactivated_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_theme_templates_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('xoo_wl_cron_send_back_in_stock_email_for_product');
wp_clear_scheduled_hook('xoo_wl_cron_fetch_old_waitlist');
wp_clear_scheduled_hook('xoo_wl_test_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xoo_waitlist_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xoo_waitlist_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xoo_waitlist_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xoo_waitlist_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xoo_waitlist_force_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xoo_waitlist_force_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xoo_waitlist_force_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xoo_waitlist_force_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xoo-wl-users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xoo-wl-users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xoo-wl-users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xoo-wl-users' ) );

