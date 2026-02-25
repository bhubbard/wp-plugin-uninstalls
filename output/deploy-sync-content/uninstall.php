<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('deploy_sync_content__tracking_init_once');
delete_site_option('deploy_sync_content__tracking_init_once');
delete_option('deploy_sync_content__settings_data');
delete_site_option('deploy_sync_content__settings_data');
delete_option('deploy_sync_content__url_prod_is_defined');
delete_site_option('deploy_sync_content__url_prod_is_defined');

// Delete Transients
delete_transient('deploy_sync_content__debug');
delete_site_transient('deploy_sync_content__debug');
delete_transient('deploy_sync_content__activation_message');
delete_site_transient('deploy_sync_content__activation_message');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

