<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bozimediazalomeni_prepositions');
delete_site_option('bozimediazalomeni_prepositions');
delete_option('bozimediazalomeni_prepositions_list');
delete_site_option('bozimediazalomeni_prepositions_list');
delete_option('bozimediazalomeni_conjunctions');
delete_site_option('bozimediazalomeni_conjunctions');
delete_option('bozimediazalomeni_conjunctions_list');
delete_site_option('bozimediazalomeni_conjunctions_list');
delete_option('bozimediazalomeni_abbreviations');
delete_site_option('bozimediazalomeni_abbreviations');
delete_option('bozimediazalomeni_abbreviations_list');
delete_site_option('bozimediazalomeni_abbreviations_list');
delete_option('bozimediazalomeni_between_number_and_unit');
delete_site_option('bozimediazalomeni_between_number_and_unit');
delete_option('bozimediazalomeni_between_number_and_unit_list');
delete_site_option('bozimediazalomeni_between_number_and_unit_list');
delete_option('bozimediazalomeni_space_between_numbers');
delete_site_option('bozimediazalomeni_space_between_numbers');
delete_option('bozimediazalomeni_space_after_ordered_number');
delete_site_option('bozimediazalomeni_space_after_ordered_number');
delete_option('bozimediazalomeni_spaces_in_scales');
delete_site_option('bozimediazalomeni_spaces_in_scales');
delete_option('bozimediazalomeni_matches');
delete_site_option('bozimediazalomeni_matches');
delete_option('bozimediazalomeni_replacements');
delete_site_option('bozimediazalomeni_replacements');
delete_option('bozimediazalomeni_acf');
delete_site_option('bozimediazalomeni_acf');
delete_option('bozimediazalomeni_matches_empty');
delete_site_option('bozimediazalomeni_matches_empty');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bozimediazalomeni_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bozimediazalomeni_acf_the_content');
delete_site_option('bozimediazalomeni_acf_the_content');

