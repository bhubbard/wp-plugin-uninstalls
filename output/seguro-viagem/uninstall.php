<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('travel_insurance_token');
delete_site_option('travel_insurance_token');
delete_option('travel_insurance_width');
delete_site_option('travel_insurance_width');
delete_option('travel_insurance_height');
delete_site_option('travel_insurance_height');

