<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcs_api_key');
delete_site_option('gcs_api_key');
delete_option('gcs_cse_id');
delete_site_option('gcs_cse_id');
delete_option('gcs_search_type');
delete_site_option('gcs_search_type');

