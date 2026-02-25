<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sm_api_key');
delete_site_option('sm_api_key');
delete_option('sm_list_id');
delete_site_option('sm_list_id');
delete_option('sm_single_opt_in');
delete_site_option('sm_single_opt_in');

