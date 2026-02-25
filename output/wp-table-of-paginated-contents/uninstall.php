<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptopc_data');
delete_site_option('wptopc_data');
delete_option('WPtopc_data');
delete_site_option('WPtopc_data');

