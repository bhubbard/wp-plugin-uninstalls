<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addonify_wishlist_plugin_review_status');
delete_site_option('addonify_wishlist_plugin_review_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%wishlist_page' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%remove_all_plugin_data_on_uninstall' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('udp_agent_allow_tracking');
delete_site_option('udp_agent_allow_tracking');
delete_option('udp_agent_tracking_msg_last_shown_at');
delete_site_option('udp_agent_tracking_msg_last_shown_at');
delete_option('udp_installed_agents');
delete_site_option('udp_installed_agents');
delete_option('udp_active_agent_basename');
delete_site_option('udp_active_agent_basename');

// Delete Transients
delete_transient('addonify_wishlist_ask_for_review_transient');
delete_site_transient('addonify_wishlist_ask_for_review_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('cc_udp_agent_send_data');
wp_clear_scheduled_hook('udp_agent_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'addonify_wishlist_default_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'addonify_wishlist_default_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'addonify_wishlist_default_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'addonify_wishlist_default_wishlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'addonify_wishlist_default_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'addonify_wishlist_default_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'addonify_wishlist_default_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'addonify_wishlist_default_default' ) );

