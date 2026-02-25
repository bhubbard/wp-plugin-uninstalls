<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AutoCatActive');
delete_site_option('AutoCatActive');
delete_option('AutoCatRuleIDs');
delete_site_option('AutoCatRuleIDs');
delete_option('AutoCatRule1Cat');
delete_site_option('AutoCatRule1Cat');
delete_option('AutoCatRule1Phrase');
delete_site_option('AutoCatRule1Phrase');
delete_option('AutoCatLastSorted');
delete_site_option('AutoCatLastSorted');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Cat' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Phrase' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

