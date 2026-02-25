<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dfsh_bypass_coupons');
delete_site_option('dfsh_bypass_coupons');
delete_option('dfsh_bypass_roles');
delete_site_option('dfsh_bypass_roles');
delete_option('dfsh_schedule_enabled');
delete_site_option('dfsh_schedule_enabled');
delete_option('dfsh_schedule_start');
delete_site_option('dfsh_schedule_start');
delete_option('dfsh_schedule_end');
delete_site_option('dfsh_schedule_end');
delete_option('dfsh_category_thresholds');
delete_site_option('dfsh_category_thresholds');
delete_option('dfsh_enabled');
delete_site_option('dfsh_enabled');
delete_option('dfsh_weight_limit');
delete_site_option('dfsh_weight_limit');
delete_option('dfsh_subtotal_limit');
delete_site_option('dfsh_subtotal_limit');
delete_option('dfsh_item_count_limit');
delete_site_option('dfsh_item_count_limit');
delete_option('dfsh_dimension_limit');
delete_site_option('dfsh_dimension_limit');
delete_option('dfsh_zone_thresholds_array');
delete_site_option('dfsh_zone_thresholds_array');
delete_option('dfsh_class_thresholds_array');
delete_site_option('dfsh_class_thresholds_array');
delete_option('dfsh_action');
delete_site_option('dfsh_action');
delete_option('dfsh_shipping_methods');
delete_site_option('dfsh_shipping_methods');
delete_option('dfsh_frontend_message');
delete_site_option('dfsh_frontend_message');
delete_option('dfsh_admin_notification');
delete_site_option('dfsh_admin_notification');
delete_option('dfsh_last_notification_time');
delete_site_option('dfsh_last_notification_time');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('dfsh_send_admin_notification_async');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dfsh_override_shipping_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dfsh_override_shipping_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dfsh_override_shipping_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dfsh_override_shipping_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dfsh_product_weight_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dfsh_product_weight_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dfsh_product_weight_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dfsh_product_weight_limit' ) );

