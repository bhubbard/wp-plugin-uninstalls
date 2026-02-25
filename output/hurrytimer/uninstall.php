<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hurryt_headline_moved_notice_dismissed');
delete_site_option('hurryt_headline_moved_notice_dismissed');
delete_option('hurryt_leave_review_dismissed');
delete_site_option('hurryt_leave_review_dismissed');
delete_option('hurryt_settings');
delete_site_option('hurryt_settings');
delete_option('hurrytimer_version');
delete_site_option('hurrytimer_version');
delete_option('hurrytimer_custom_css');
delete_site_option('hurrytimer_custom_css');
delete_option('hurrytimer_upgraded_2_2_28');
delete_site_option('hurrytimer_upgraded_2_2_28');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woocommerce_pay_page_id');
delete_site_option('woocommerce_pay_page_id');
delete_option('woocommerce_thanks_page_id');
delete_site_option('woocommerce_thanks_page_id');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_edit_address_page_id');
delete_site_option('woocommerce_edit_address_page_id');
delete_option('woocommerce_view_order_page_id');
delete_site_option('woocommerce_view_order_page_id');
delete_option('woocommerce_terms_page_id');
delete_site_option('woocommerce_terms_page_id');

// Delete Transients
delete_transient('hurryt_remind_review_notice');
delete_site_transient('hurryt_remind_review_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('hurrytimer_evergreen_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'labels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'labels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'labels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'labels' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'discount_type' ) );

