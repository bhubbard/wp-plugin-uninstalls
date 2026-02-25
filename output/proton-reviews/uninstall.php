<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proton_google');
delete_site_option('proton_google');
delete_option('proton_display_google');
delete_site_option('proton_display_google');
delete_option('proton_google_places');
delete_site_option('proton_google_places');
delete_option('proton_yelp');
delete_site_option('proton_yelp');
delete_option('proton_display_yelp');
delete_site_option('proton_display_yelp');
delete_option('proton_google_position');
delete_site_option('proton_google_position');
delete_option('proton_yelp_position');
delete_site_option('proton_yelp_position');
delete_option('proton_logo');
delete_site_option('proton_logo');
delete_option('proton_company_name');
delete_site_option('proton_company_name');
delete_option('proton_screen_choice');
delete_site_option('proton_screen_choice');
delete_option('proton_site_key');
delete_site_option('proton_site_key');
delete_option('proton_secret_key');
delete_site_option('proton_secret_key');
delete_option('proton_location_id');
delete_site_option('proton_location_id');
delete_option('proton_google_api_key');
delete_site_option('proton_google_api_key');
delete_option('proton_yelp_id');
delete_site_option('proton_yelp_id');
delete_option('proton_template');
delete_site_option('proton_template');
delete_option('proton_google_array1');
delete_site_option('proton_google_array1');
delete_option('proton_mail_to');
delete_site_option('proton_mail_to');
delete_option('proton_negative_heading');
delete_site_option('proton_negative_heading');
delete_option('proton_negative_message');
delete_site_option('proton_negative_message');
delete_option('proton_recommend');
delete_site_option('proton_recommend');

