<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kwms_api_key');
delete_site_option('kwms_api_key');
delete_option('kwms_sync_external_id');
delete_site_option('kwms_sync_external_id');
delete_option('kwms_list_id');
delete_site_option('kwms_list_id');
delete_option('kwms_segment_id');
delete_site_option('kwms_segment_id');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kwms_list_size_%', '_site_transient_kwms_list_size_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_kwms_segment_size_%', '_site_transient_kwms_segment_size_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

