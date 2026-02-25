<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_private_options');
delete_site_option('jetpack_private_options');
delete_option('jetpack_options');
delete_site_option('jetpack_options');
delete_option('cpy_payments_error_tokens');
delete_site_option('cpy_payments_error_tokens');
delete_option('_cpy_current_token');
delete_site_option('_cpy_current_token');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Delete Transients
delete_transient('wcpay_account_data');
delete_site_transient('wcpay_account_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('cpy_tokens_change_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woocommerce_payments_token_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woocommerce_payments_token_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woocommerce_payments_token_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woocommerce_payments_token_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

