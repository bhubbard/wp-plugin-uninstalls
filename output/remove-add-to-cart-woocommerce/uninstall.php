<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ratcwp_hide_user_role');
delete_site_option('ratcwp_hide_user_role');
delete_option('ratcwp_hide_cart_button');
delete_site_option('ratcwp_hide_cart_button');
delete_option('ratcwp_hide_products');
delete_site_option('ratcwp_hide_products');
delete_option('cps_hide_categories');
delete_site_option('cps_hide_categories');
delete_option('ratcwp_enable_hide_pirce_guest');
delete_site_option('ratcwp_enable_hide_pirce_guest');
delete_option('ratcwp_enable_hide_pirce_registered');
delete_site_option('ratcwp_enable_hide_pirce_registered');
delete_option('ratcwp_price_text');
delete_site_option('ratcwp_price_text');
delete_option('ratcwp_cart_button_link');
delete_site_option('ratcwp_cart_button_link');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('ratcwp_enable_hide_pirce');
delete_site_option('ratcwp_enable_hide_pirce');
delete_option('ratcwp_enable_hide_pirce_all');
delete_site_option('ratcwp_enable_hide_pirce_all');
delete_option('ratcwp_hide_price');
delete_site_option('ratcwp_hide_price');
delete_option('ratcwp_cart_button_text');
delete_site_option('ratcwp_cart_button_text');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpiudacb_disable_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpiudacb_disable_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpiudacb_disable_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpiudacb_disable_add_to_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpiudacb_inqure_us_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpiudacb_inqure_us_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpiudacb_inqure_us_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpiudacb_inqure_us_link' ) );

