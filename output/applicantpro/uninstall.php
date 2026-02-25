<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'applicantpro_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('applicantpro_api');
delete_site_option('applicantpro_api');
delete_option('show_job_location');
delete_site_option('show_job_location');
delete_option('header_bg_color');
delete_site_option('header_bg_color');
delete_option('header_title_color');
delete_site_option('header_title_color');
delete_option('button_bg_color');
delete_site_option('button_bg_color');
delete_option('button_text_color');
delete_site_option('button_text_color');
delete_option('listing_subtitle_color');
delete_site_option('listing_subtitle_color');
delete_option('applicant_social_media_enable');
delete_site_option('applicant_social_media_enable');
delete_option('employment_additional');
delete_site_option('employment_additional');
delete_option('department_additional');
delete_site_option('department_additional');
delete_option('close_date_additional');
delete_site_option('close_date_additional');
delete_option('show_pay_information');
delete_site_option('show_pay_information');
delete_option('applicant_twitter_url');
delete_site_option('applicant_twitter_url');
delete_option('applicant_facebook_url');
delete_site_option('applicant_facebook_url');
delete_option('applicant_linkedin_url');
delete_site_option('applicant_linkedin_url');
delete_option('applicant_instagram_url');
delete_site_option('applicant_instagram_url');
delete_option('listing_link_color');
delete_site_option('listing_link_color');
delete_option('listing_hover_color');
delete_site_option('listing_hover_color');
delete_option('map_enable');
delete_site_option('map_enable');
delete_option('cityzip_filter');
delete_site_option('cityzip_filter');
delete_option('employment_filter');
delete_site_option('employment_filter');
delete_option('country_filter');
delete_site_option('country_filter');
delete_option('classification_filter');
delete_site_option('classification_filter');
delete_option('map_active_color');
delete_site_option('map_active_color');
delete_option('map_inactive_color');
delete_site_option('map_inactive_color');
delete_option('state_label');
delete_site_option('state_label');
delete_option('classification_label');
delete_site_option('classification_label');

// Delete Transients
delete_transient('apppro_data');
delete_site_transient('apppro_data');

