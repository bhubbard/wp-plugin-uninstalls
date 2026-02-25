<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mlockdown_status');
delete_site_option('mlockdown_status');
delete_option('mlock_basic_auth');
delete_site_option('mlock_basic_auth');
delete_option('mlockdown_rest_api');
delete_site_option('mlockdown_rest_api');

