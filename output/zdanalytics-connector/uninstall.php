<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zdac_ga4_measurement_id');
delete_site_option('zdac_ga4_measurement_id');
delete_option('zdac_gtm_container_id');
delete_site_option('zdac_gtm_container_id');
delete_option('zdac_require_consent');
delete_site_option('zdac_require_consent');
delete_option('zdac_exclude_logged_in');
delete_site_option('zdac_exclude_logged_in');
delete_option('zdac_enable_tracking');
delete_site_option('zdac_enable_tracking');
delete_option('zdac_consent_cookie_name');
delete_site_option('zdac_consent_cookie_name');
delete_option('zdac_consent_source');
delete_site_option('zdac_consent_source');
delete_option('zdac_consent_values');
delete_site_option('zdac_consent_values');

