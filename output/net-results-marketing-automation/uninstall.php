<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nr_ps_id');
delete_site_option('nr_ps_id');
delete_option('nr_access_token');
delete_site_option('nr_access_token');
delete_option('nr_client_id');
delete_site_option('nr_client_id');
delete_option('nr_client_secret');
delete_site_option('nr_client_secret');

