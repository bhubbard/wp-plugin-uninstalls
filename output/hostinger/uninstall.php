<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hostinger_woo_onboarding_choice');
delete_site_option('hostinger_woo_onboarding_choice');
delete_option('hostinger_reseller');
delete_site_option('hostinger_reseller');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hostinger_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('hostinger_hide_subpages');
delete_site_option('hostinger_hide_subpages');

// Delete Transients
delete_transient('hostinger_newest_wordpress_version');
delete_site_transient('hostinger_newest_wordpress_version');
delete_transient('hostinger_is_eligible_www_redirect');
delete_site_transient('hostinger_is_eligible_www_redirect');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

