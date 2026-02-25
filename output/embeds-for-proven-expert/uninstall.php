<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('efpe_api_id');
delete_site_option('efpe_api_id');
delete_option('efpe_api_key');
delete_site_option('efpe_api_key');

