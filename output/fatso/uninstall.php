<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fatso_width');
delete_site_option('fatso_width');
delete_option('fatso_unit');
delete_site_option('fatso_unit');

