<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udp_agent_allow_tracking');
delete_site_option('udp_agent_allow_tracking');
delete_option('udp_agent_tracking_msg_last_shown_at');
delete_site_option('udp_agent_tracking_msg_last_shown_at');
delete_option('udp_installed_agents');
delete_site_option('udp_installed_agents');
delete_option('udp_active_agent_basename');
delete_site_option('udp_active_agent_basename');

// Clear Cron Jobs
wp_clear_scheduled_hook('cc_udp_agent_send_data');
wp_clear_scheduled_hook('udp_agent_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ugaam-disable-ad-content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ugaam-disable-ad-content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ugaam-disable-ad-content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ugaam-disable-ad-content' ) );

