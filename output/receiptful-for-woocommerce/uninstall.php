<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('receiptful_widgets');
delete_site_option('receiptful_widgets');
delete_option('receiptful_public_user_key');
delete_site_option('receiptful_public_user_key');
delete_option('_receiptful_queue');
delete_site_option('_receiptful_queue');
delete_option('receiptful_debug_mode_enabled');
delete_site_option('receiptful_debug_mode_enabled');
delete_option('_receiptful_resend_queue');
delete_site_option('_receiptful_resend_queue');
delete_option('receiptful_api_key');
delete_site_option('receiptful_api_key');
delete_option('receiptful_woocommerce_version');
delete_site_option('receiptful_woocommerce_version');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('receiptful_suppress_wc_processing_email');
delete_site_option('receiptful_suppress_wc_processing_email');
delete_option('receiptful_suppress_wc_completed_email');
delete_site_option('receiptful_suppress_wc_completed_email');
delete_option('receiptful_enable_search');
delete_site_option('receiptful_enable_search');
delete_option('receiptful_enable_recommendations');
delete_site_option('receiptful_enable_recommendations');
delete_option('receiptful_enable_feedback_widgets');
delete_site_option('receiptful_enable_feedback_widgets');
delete_option('receiptful_marketing_optin');
delete_site_option('receiptful_marketing_optin');
delete_option('receiptful_marketing_optin_text');
delete_site_option('receiptful_marketing_optin_text');
delete_option('receiptful_completed_initial_product_sync');
delete_site_option('receiptful_completed_initial_product_sync');
delete_option('receiptful_completed_initial_receipt_sync');
delete_site_option('receiptful_completed_initial_receipt_sync');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('receiptful_enable_abandoned_cart');
delete_site_option('receiptful_enable_abandoned_cart');

// Clear Cron Jobs
wp_clear_scheduled_hook('receiptful_check_resend');
wp_clear_scheduled_hook('receiptful_initial_product_sync');
wp_clear_scheduled_hook('receiptful_initial_receipt_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_receiptful_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_receiptful_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_receiptful_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_receiptful_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_receiptful_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_receiptful_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_receiptful_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_receiptful_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_receiptful_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_receiptful_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_receiptful_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_receiptful_web_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_receiptful_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_receiptful_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_receiptful_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_receiptful_receipt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_purchase_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_purchase_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_purchase_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_purchase_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );

