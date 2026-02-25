<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glt-site-language');
delete_site_option('glt-site-language');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'glt-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('glt-multi-language');
delete_site_option('glt-multi-language');
delete_option('glt-languages');
delete_site_option('glt-languages');
delete_option('glt-languages-list');
delete_site_option('glt-languages-list');
delete_option('glt-display-mode');
delete_site_option('glt-display-mode');
delete_option('glt-inline-display-mode');
delete_site_option('glt-inline-display-mode');
delete_option('glt-tabbed-display-mode');
delete_site_option('glt-tabbed-display-mode');
delete_option('glt-flags');
delete_site_option('glt-flags');
delete_option('glt-flags-list');
delete_site_option('glt-flags-list');
delete_option('glt-flags-order');
delete_site_option('glt-flags-order');
delete_option('glt-toolbar');
delete_site_option('glt-toolbar');
delete_option('glt-align');
delete_site_option('glt-align');
delete_option('glt-active');
delete_site_option('glt-active');
delete_option('glt-analytics');
delete_site_option('glt-analytics');
delete_option('glt-analytics-id');
delete_site_option('glt-analytics-id');
delete_option('glt-css');
delete_site_option('glt-css');

