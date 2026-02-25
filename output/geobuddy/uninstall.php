<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bd_geobuddy_custom_fields');
delete_site_option('bd_geobuddy_custom_fields');

