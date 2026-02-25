<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('operational_api_key');
delete_site_option('operational_api_key');
delete_option('operational_log_activity');
delete_site_option('operational_log_activity');
delete_option('operational_baseurl');
delete_site_option('operational_baseurl');

