<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cache-warmer-updating');
delete_site_option('cache-warmer-updating');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cache-warmer-setting-external-warmer-license-key%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-code%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cache-warmer-setting-external-warmer-key-validation-endpoint-last-response-body%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cache-warmer-setting-external-warmer-servers-to-use%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cache-warmer-setting-external-warmer-interval%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cache-warmer-last-delete-external-warmer-logs');
delete_site_option('cache-warmer-last-delete-external-warmer-logs');
delete_option('cache-warmer-intervals-scheduling-post-activation-handled');
delete_site_option('cache-warmer-intervals-scheduling-post-activation-handled');
delete_option('cache-warmer-setting-user-agent');
delete_site_option('cache-warmer-setting-user-agent');
delete_option('cache-warmer-setting-user-agents');
delete_site_option('cache-warmer-setting-user-agents');
delete_option('cache-warmer-setting-for-how-many-days-to-keep-the-logs');
delete_site_option('cache-warmer-setting-for-how-many-days-to-keep-the-logs');
delete_option('cache-warmer-setting-depth');
delete_site_option('cache-warmer-setting-depth');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

