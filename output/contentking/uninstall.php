<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contentking_client_token');
delete_site_option('contentking_client_token');
delete_option('contentking_status_flag');
delete_site_option('contentking_status_flag');

