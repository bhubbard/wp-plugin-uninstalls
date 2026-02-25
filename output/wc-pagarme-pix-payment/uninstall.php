<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_wc_pagarme_pix_payment_geteway_settings');
delete_site_option('woocommerce_wc_pagarme_pix_payment_geteway_settings');
delete_option('wcbcf_settings');
delete_site_option('wcbcf_settings');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_pagarme_pix_payment_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_wc_pagarme_pix_payment_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_wc_pagarme_pix_payment_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_wc_pagarme_pix_payment_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_wc_pagarme_pix_payment_dismissed_notice_%' ) );

