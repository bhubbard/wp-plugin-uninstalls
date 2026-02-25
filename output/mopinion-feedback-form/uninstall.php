<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_position' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mopinion_feedback_form_mopinionkey');
delete_site_option('mopinion_feedback_form_mopinionkey');
delete_option('mopinion_feedback_form_position');
delete_site_option('mopinion_feedback_form_position');

