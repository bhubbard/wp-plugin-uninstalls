<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustarc_version');
delete_site_option('trustarc_version');
delete_option('trustarc_script');
delete_site_option('trustarc_script');
delete_option('trustarc_script_params');
delete_site_option('trustarc_script_params');
delete_option('trustarc_banner');
delete_site_option('trustarc_banner');
delete_option('trustarc_preferences_selector');
delete_site_option('trustarc_preferences_selector');
delete_option('trustarc_preferences');
delete_site_option('trustarc_preferences');
delete_option('trustarc_standard_event_listener');
delete_site_option('trustarc_standard_event_listener');
delete_option('trustarc_google_consent_mode');
delete_site_option('trustarc_google_consent_mode');
delete_option('trustarc_implied_location');
delete_site_option('trustarc_implied_location');
delete_option('trustarc_consent_config');
delete_site_option('trustarc_consent_config');
delete_option('trustarc_wp_consent_api');
delete_site_option('trustarc_wp_consent_api');
delete_option('trustarc_wp_consent_api_mapping');
delete_site_option('trustarc_wp_consent_api_mapping');
delete_option('trustarc_ga_measurement_id');
delete_site_option('trustarc_ga_measurement_id');
delete_option('trustarc_google_consent_fields');
delete_site_option('trustarc_google_consent_fields');
delete_option('trustarc_ads_data_redaction');
delete_site_option('trustarc_ads_data_redaction');
delete_option('trustarc_url_passthrough');
delete_site_option('trustarc_url_passthrough');

