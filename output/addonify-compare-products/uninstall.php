<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%compare_page' ) );
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

// Clear Cron Jobs
wp_clear_scheduled_hook('cc_udp_agent_send_data');
wp_clear_scheduled_hook('udp_agent_cron');

