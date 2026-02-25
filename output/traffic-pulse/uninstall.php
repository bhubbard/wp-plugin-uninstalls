<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trafficpulse_api_token');
delete_site_option('trafficpulse_api_token');
delete_option('trafficpulse_api_url');
delete_site_option('trafficpulse_api_url');
delete_option('trafficpulse_plausible_url');
delete_site_option('trafficpulse_plausible_url');
delete_option('trafficpulse_auto_insert');
delete_site_option('trafficpulse_auto_insert');

