<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_evav_require_for');
delete_site_option('_evav_require_for');
delete_option('_evav_always_verify');
delete_site_option('_evav_always_verify');
delete_option('_evav_pagetargeting_option');
delete_site_option('_evav_pagetargeting_option');
delete_option('_evav_ajax_check');
delete_site_option('_evav_ajax_check');
delete_option('_evav_adult_type');
delete_site_option('_evav_adult_type');
delete_option('_evav_user_age_verify_option_title');
delete_site_option('_evav_user_age_verify_option_title');
delete_option('_evav_heading');
delete_site_option('_evav_heading');
delete_option('_evav_disclaimer');
delete_site_option('_evav_disclaimer');
delete_option('easy-age-verify');
delete_site_option('easy-age-verify');
delete_option('_evav_minimum_age');
delete_site_option('_evav_minimum_age');
delete_option('_evav_cookie_duration');
delete_site_option('_evav_cookie_duration');
delete_option('_evav_membership');
delete_site_option('_evav_membership');
delete_option('_evav_input_type');
delete_site_option('_evav_input_type');
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
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('_evav_overlay_color');
delete_site_option('_evav_overlay_color');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_evav_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_evav_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_evav_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_evav_needs_verify' ) );

