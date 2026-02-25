<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpns_tt_allow_nestads_api');
delete_site_option('wpns_tt_allow_nestads_api');
delete_option('wpns_tt_pwd');
delete_site_option('wpns_tt_pwd');
delete_option('wpns_tt_consumer_key');
delete_site_option('wpns_tt_consumer_key');
delete_option('wpns_tt_pixel_codes');
delete_site_option('wpns_tt_pixel_codes');

