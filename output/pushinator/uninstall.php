<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushinator_db_version');
delete_site_option('pushinator_db_version');
delete_option('pushinator_api_token');
delete_site_option('pushinator_api_token');

