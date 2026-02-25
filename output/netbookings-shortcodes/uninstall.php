<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nb_business_id');
delete_site_option('nb_business_id');
delete_option('nb_base_url');
delete_site_option('nb_base_url');
delete_option('nb_primary_colour');
delete_site_option('nb_primary_colour');
delete_option('nb_secondary_colour');
delete_site_option('nb_secondary_colour');
delete_option('nb_bathing_availability_active');
delete_site_option('nb_bathing_availability_active');
delete_option('nb_cards_active');
delete_site_option('nb_cards_active');
delete_option('nb_styling');
delete_site_option('nb_styling');
delete_option('nb_button_style');
delete_site_option('nb_button_style');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nb_xml_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('timezone_strong');
delete_site_option('timezone_strong');

