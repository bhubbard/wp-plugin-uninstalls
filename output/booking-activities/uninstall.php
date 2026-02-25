<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('bookacti-install-date');
delete_site_option('bookacti-install-date');
delete_option('bookacti_cron_key');
delete_site_option('bookacti_cron_key');
delete_option('bookacti_version');
delete_site_option('bookacti_version');
delete_option('bookacti_db_version');
delete_site_option('bookacti_db_version');
delete_option('bookacti_async_notifications');
delete_site_option('bookacti_async_notifications');
delete_option('bookacti_latest_emails_sent');
delete_site_option('bookacti_latest_emails_sent');
delete_option('bookacti_general_settings');
delete_site_option('bookacti_general_settings');
delete_option('bookacti_cancellation_settings');
delete_site_option('bookacti_cancellation_settings');
delete_option('bookacti_notifications_settings');
delete_site_option('bookacti_notifications_settings');
delete_option('bookacti_messages_settings');
delete_site_option('bookacti_messages_settings');
delete_option('bookacti_licenses_settings');
delete_site_option('bookacti_licenses_settings');
delete_option('bookacti-5stars-rating-notice-dismissed');
delete_site_option('bookacti-5stars-rating-notice-dismissed');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_myaccount_bookings_endpoint');
delete_site_option('woocommerce_myaccount_bookings_endpoint');
delete_option('woocommerce_stock_email_recipient');
delete_site_option('woocommerce_stock_email_recipient');
delete_option('bookacti_products_settings');
delete_site_option('bookacti_products_settings');
delete_option('bookacti_account_settings');
delete_site_option('bookacti_account_settings');
delete_option('bookacti_cart_settings');
delete_site_option('bookacti_cart_settings');
delete_option('bookacti_secret_key');
delete_site_option('bookacti_secret_key');
delete_option('bookacti_secret_iv');
delete_site_option('bookacti_secret_iv');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bookacti_notifications_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bookacti_template_settings');
delete_site_option('bookacti_template_settings');
delete_option('bookacti_bookings_settings');
delete_site_option('bookacti_bookings_settings');
delete_option('bookacti_archive_secret_key');
delete_site_option('bookacti_archive_secret_key');
delete_option('badp_license_status');
delete_site_option('badp_license_status');
delete_option('banp_license_status');
delete_site_option('banp_license_status');
delete_option('baaf_license_status');
delete_site_option('baaf_license_status');
delete_option('bara_license_status');
delete_site_option('bara_license_status');
delete_option('bawl_license_status');
delete_site_option('bawl_license_status');
delete_option('bapap_license_status');
delete_site_option('bapap_license_status');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('bookacti_installing');
delete_site_transient('bookacti_installing');
delete_transient('bookacti_cart_item_not_restored_notices');
delete_site_transient('bookacti_cart_item_not_restored_notices');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bookacti_notif_%', '_site_transient_bookacti_notif_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bookacti_wc_incompatible_collations');
delete_site_transient('bookacti_wc_incompatible_collations');

// Clear Cron Jobs
wp_clear_scheduled_hook('bookacti_clean_expired_exports');
wp_clear_scheduled_hook('bookacti_clean_latest_notifications');
wp_clear_scheduled_hook('bookacti_hourly_event');
wp_clear_scheduled_hook('bookacti_delete_expired_bookings');
wp_clear_scheduled_hook('bookacti_cron_send_async_notifications');
wp_clear_scheduled_hook('bookacti_send_async_new_user_notification');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_bookings_calendar_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_bookings_calendar_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_bookings_calendar_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_bookings_calendar_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_status_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_status_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_status_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_status_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_bookings_export_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_bookings_export_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_bookings_export_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_bookings_export_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_ical_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_ical_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_ical_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_ical_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_default_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_default_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_default_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_default_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bookacti_expiration_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bookacti_expiration_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bookacti_expiration_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bookacti_expiration_cart' ) );

