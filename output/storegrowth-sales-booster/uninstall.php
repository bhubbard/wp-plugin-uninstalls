<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storegrowth_activation_redirect');
delete_site_option('storegrowth_activation_redirect');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('spsg_user_consent_data');
delete_site_option('spsg_user_consent_data');
delete_option('spsg_ini_completion');
delete_site_option('spsg_ini_completion');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('spsg_bogo_dokan_vendors_settings');
delete_site_option('spsg_bogo_dokan_vendors_settings');
delete_option('spsg_bogo_general_settings');
delete_site_option('spsg_bogo_general_settings');
delete_option('spsg_bogo_migration_backup');
delete_site_option('spsg_bogo_migration_backup');
delete_option('spsg_countdown_timer_settings');
delete_site_option('spsg_countdown_timer_settings');
delete_option('spsg_direct_checkout_settings');
delete_site_option('spsg_direct_checkout_settings');
delete_option('spsg_floating_notification_bar_settings');
delete_site_option('spsg_floating_notification_bar_settings');
delete_option('spsg_fly_cart_settings');
delete_site_option('spsg_fly_cart_settings');
delete_option('spsg_progressive_discount_banner_settings');
delete_site_option('spsg_progressive_discount_banner_settings');
delete_option('spsg_discount_banner_flags');
delete_site_option('spsg_discount_banner_flags');
delete_option('spsg_quick_view_settings');
delete_site_option('spsg_quick_view_settings');
delete_option('spsg_popup_products');
delete_site_option('spsg_popup_products');
delete_option('spsg_stock_bar_settings');
delete_site_option('spsg_stock_bar_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_start' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_end' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spsg_countdown_timer_discount_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spsg_direct_checkout_button_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spsg_direct_checkout_button_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spsg_direct_checkout_button_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spsg_direct_checkout_button_layout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcvi_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcvi_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcvi_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcvi_images' ) );

