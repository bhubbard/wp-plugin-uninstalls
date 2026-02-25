<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ihc_levels');
delete_site_option('ihc_levels');
delete_option('ihc_general_login_default_page');
delete_site_option('ihc_general_login_default_page');
delete_option('ihc_general_user_page');
delete_site_option('ihc_general_user_page');
delete_option('ihc_general_lost_pass_page');
delete_site_option('ihc_general_lost_pass_page');
delete_option('ihc_general_register_default_page');
delete_site_option('ihc_general_register_default_page');
delete_option('ihc_subscription_plan_page');
delete_site_option('ihc_subscription_plan_page');

