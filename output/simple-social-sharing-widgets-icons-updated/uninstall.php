<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_iconsize');
delete_site_option('ss_iconsize');
delete_option('ss_title');
delete_site_option('ss_title');
delete_option('ss_twitterwidget');
delete_site_option('ss_twitterwidget');
delete_option('ss_googlepluswidget');
delete_site_option('ss_googlepluswidget');
delete_option('ss_facebookwidget');
delete_site_option('ss_facebookwidget');
delete_option('ss_facebook');
delete_site_option('ss_facebook');
delete_option('ss_twitter');
delete_site_option('ss_twitter');
delete_option('ss_email');
delete_site_option('ss_email');
delete_option('ss_blogger');
delete_site_option('ss_blogger');
delete_option('ss_delicious');
delete_site_option('ss_delicious');
delete_option('ss_digg');
delete_site_option('ss_digg');
delete_option('ss_google');
delete_site_option('ss_google');
delete_option('ss_myspace');
delete_site_option('ss_myspace');
delete_option('ss_stumbleupon');
delete_site_option('ss_stumbleupon');
delete_option('ss_yahoo');
delete_site_option('ss_yahoo');
delete_option('ss_reddit');
delete_site_option('ss_reddit');
delete_option('ss_technorati');
delete_site_option('ss_technorati');
delete_option('ss_rss');
delete_site_option('ss_rss');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ss_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

