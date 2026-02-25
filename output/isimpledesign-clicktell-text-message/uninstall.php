<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isd-user');
delete_site_option('isd-user');
delete_option('isd-password');
delete_site_option('isd-password');
delete_option('isd-apiid');
delete_site_option('isd-apiid');

