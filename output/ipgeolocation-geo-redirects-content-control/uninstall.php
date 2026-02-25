<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipgeo_setup');
delete_site_option('ipgeo_setup');
delete_option('ipgeo_country_rules');
delete_site_option('ipgeo_country_rules');
delete_option('ipgeo_page_exclusions');
delete_site_option('ipgeo_page_exclusions');
delete_option('ipgeo_country_access');
delete_site_option('ipgeo_country_access');

