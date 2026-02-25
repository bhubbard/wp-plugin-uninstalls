<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('samohyb_ga_api_url');
delete_site_option('samohyb_ga_api_url');
delete_option('samohyb_ga_access_token');
delete_site_option('samohyb_ga_access_token');
delete_option('samohyb_ga_refresh_token');
delete_site_option('samohyb_ga_refresh_token');
delete_option('samohyb_ga_token');
delete_site_option('samohyb_ga_token');

// Delete Transients
delete_transient('samohyb_ga_access_response');
delete_site_transient('samohyb_ga_access_response');
delete_transient('samohyb_ga_access_whitelist');
delete_site_transient('samohyb_ga_access_whitelist');

