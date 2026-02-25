<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_aa_options_google_maps_api_key');
delete_site_option('simple_aa_options_google_maps_api_key');
delete_option('simple_aa_options_country');
delete_site_option('simple_aa_options_country');
delete_option('simple_aa_options_field_ids');
delete_site_option('simple_aa_options_field_ids');
delete_option('simple_aa_options_bias_coordinates');
delete_site_option('simple_aa_options_bias_coordinates');
delete_option('simple_aa_options_restriction_type');
delete_site_option('simple_aa_options_restriction_type');

