<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('city_unit');
delete_site_option('city_unit');
delete_option('ywstyles');
delete_site_option('ywstyles');

