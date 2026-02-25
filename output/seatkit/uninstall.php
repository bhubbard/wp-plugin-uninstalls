<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seatkit_currency_symbol');
delete_site_option('seatkit_currency_symbol');
delete_option('seatkit_company_name');
delete_site_option('seatkit_company_name');
delete_option('seatkit_delete_on_uninstall');
delete_site_option('seatkit_delete_on_uninstall');
delete_option('seatkit_admin_email_from');
delete_site_option('seatkit_admin_email_from');
delete_option('seatkit_payment_mode');
delete_site_option('seatkit_payment_mode');
delete_option('seatkit_enabled_gateways');
delete_site_option('seatkit_enabled_gateways');
delete_option('seatkit_default_gateway');
delete_site_option('seatkit_default_gateway');
delete_option('seatkit_razorpay_key');
delete_site_option('seatkit_razorpay_key');
delete_option('seatkit_razorpay_secret');
delete_site_option('seatkit_razorpay_secret');
delete_option('seatkit_stripe_publishable');
delete_site_option('seatkit_stripe_publishable');
delete_option('seatkit_stripe_secret');
delete_site_option('seatkit_stripe_secret');
delete_option('seatkit_cancel_hours');
delete_site_option('seatkit_cancel_hours');
delete_option('seatkit_refund_deduction');
delete_site_option('seatkit_refund_deduction');
delete_option('seatkit_ticket_company');
delete_site_option('seatkit_ticket_company');
delete_option('seatkit_ticket_footer');
delete_site_option('seatkit_ticket_footer');
delete_option('seatkit_reservation_expiry');
delete_site_option('seatkit_reservation_expiry');
delete_option('seatkit_reservation_percent');
delete_site_option('seatkit_reservation_percent');
delete_option('sk_ticket_footer');
delete_site_option('sk_ticket_footer');
delete_option('sk_ticket_color');
delete_site_option('sk_ticket_color');
delete_option('sk_ticket_company');
delete_site_option('sk_ticket_company');
delete_option('seatkit_version');
delete_site_option('seatkit_version');
delete_option('seatkit_lock_expiry_minutes');
delete_site_option('seatkit_lock_expiry_minutes');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_seatkit_cancel_otp_%', '_site_transient_seatkit_cancel_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('seatkit_cron_cleanup_locks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seatkit_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seatkit_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seatkit_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seatkit_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seatkit_otp_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seatkit_otp_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seatkit_otp_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seatkit_otp_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

