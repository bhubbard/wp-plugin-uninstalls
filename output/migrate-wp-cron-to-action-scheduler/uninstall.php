<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acswp_plugin_dismiss_rating_notice');
delete_site_option('acswp_plugin_dismiss_rating_notice');
delete_option('acswp_plugin_dismiss_donate_notice');
delete_site_option('acswp_plugin_dismiss_donate_notice');
delete_option('acswp_plugin_no_thanks_rating_notice');
delete_site_option('acswp_plugin_no_thanks_rating_notice');
delete_option('acswp_plugin_dismissed_time');
delete_site_option('acswp_plugin_dismissed_time');
delete_option('acswp_plugin_no_thanks_donate_notice');
delete_site_option('acswp_plugin_no_thanks_donate_notice');
delete_option('acswp_plugin_dismissed_time_donate');
delete_site_option('acswp_plugin_dismissed_time_donate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('acswp_plugin_installed_time');
delete_site_option('acswp_plugin_installed_time');
delete_option('acswp_settings');
delete_site_option('acswp_settings');
delete_option('acswp_unique_action');
delete_site_option('acswp_unique_action');

// Delete Transients
delete_transient('acswp-show-notice-on-activation');
delete_site_transient('acswp-show-notice-on-activation');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

