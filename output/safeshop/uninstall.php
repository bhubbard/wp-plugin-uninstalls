<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safeshop_option_name');
delete_site_option('safeshop_option_name');
delete_option('safeshop_status');
delete_site_option('safeshop_status');
delete_option('safeshop_client_id');
delete_site_option('safeshop_client_id');
delete_option('safeshop_client_secret');
delete_site_option('safeshop_client_secret');

