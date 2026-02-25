<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cc-suite_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cc-suite_conditionals');
delete_site_option('cc-suite_conditionals');
delete_option('cc-suite_tagline');
delete_site_option('cc-suite_tagline');
delete_option('cc-suite_usetargetblank');
delete_site_option('cc-suite_usetargetblank');
delete_option('cc-suite_style_before');
delete_site_option('cc-suite_style_before');
delete_option('cc-suite_style_after');
delete_site_option('cc-suite_style_after');

