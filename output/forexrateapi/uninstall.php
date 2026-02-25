<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forexrateapi_api_key');
delete_site_option('forexrateapi_api_key');
delete_option('forexrateapi_data_success');
delete_site_option('forexrateapi_data_success');
delete_option('forexrateapi_data_none');
delete_site_option('forexrateapi_data_none');
delete_option('forexrateapi_data_error');
delete_site_option('forexrateapi_data_error');

