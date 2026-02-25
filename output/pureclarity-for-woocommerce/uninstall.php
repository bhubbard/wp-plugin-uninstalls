<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pureclarity_db_version');
delete_site_option('pureclarity_db_version');
delete_option('pureclarity_mode');
delete_site_option('pureclarity_mode');
delete_option('pureclarity_accesskey');
delete_site_option('pureclarity_accesskey');
delete_option('pureclarity_secretkey');
delete_site_option('pureclarity_secretkey');
delete_option('pureclarity_region');
delete_site_option('pureclarity_region');
delete_option('pureclarity_nightly_feed_enabled');
delete_site_option('pureclarity_nightly_feed_enabled');
delete_option('pureclarity_deltas_enabled');
delete_site_option('pureclarity_deltas_enabled');
delete_option('pureclarity_bmz_debug');
delete_site_option('pureclarity_bmz_debug');
delete_option('pureclarity_add_bmz_homepage');
delete_site_option('pureclarity_add_bmz_homepage');
delete_option('pureclarity_add_bmz_searchpage');
delete_site_option('pureclarity_add_bmz_searchpage');
delete_option('pureclarity_add_bmz_categorypage');
delete_site_option('pureclarity_add_bmz_categorypage');
delete_option('pureclarity_add_bmz_productpage');
delete_site_option('pureclarity_add_bmz_productpage');
delete_option('pureclarity_add_bmz_basketpage');
delete_site_option('pureclarity_add_bmz_basketpage');
delete_option('pureclarity_add_bmz_checkoutpage');
delete_site_option('pureclarity_add_bmz_checkoutpage');
delete_option('pureclarity_category_feed_required');
delete_site_option('pureclarity_category_feed_required');
delete_option('pureclarity_feed_debug_logging');
delete_site_option('pureclarity_feed_debug_logging');
delete_option('pureclarity_product_feed_exclude_oos');
delete_site_option('pureclarity_product_feed_exclude_oos');
delete_option('pureclarity_env_subheading');
delete_site_option('pureclarity_env_subheading');
delete_option('pureclarity_feeds_subheading');
delete_site_option('pureclarity_feeds_subheading');
delete_option('pureclarity_zones_subheading');
delete_site_option('pureclarity_zones_subheading');
delete_option('pureclarity_brandfeed_run');
delete_site_option('pureclarity_brandfeed_run');
delete_option('pureclarity_catfeed_run');
delete_site_option('pureclarity_catfeed_run');
delete_option('pureclarity_delta_running');
delete_site_option('pureclarity_delta_running');
delete_option('pureclarity_orderfeed_run');
delete_site_option('pureclarity_orderfeed_run');
delete_option('pureclarity_prodfeed_run');
delete_site_option('pureclarity_prodfeed_run');
delete_option('pureclarity_product_deltas');
delete_site_option('pureclarity_product_deltas');
delete_option('pureclarity_user_deltas');
delete_site_option('pureclarity_user_deltas');
delete_option('pureclarity_userfeed_run');
delete_site_option('pureclarity_userfeed_run');

// Clear Cron Jobs
wp_clear_scheduled_hook('pureclarity_requested_feeds_cron');
wp_clear_scheduled_hook('pureclarity_nightly_feeds_cron');
wp_clear_scheduled_hook('pureclarity_check_signup_status_cron');
wp_clear_scheduled_hook('pureclarity_scheduled_deltas_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

