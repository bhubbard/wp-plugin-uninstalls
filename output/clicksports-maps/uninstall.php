<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clicksports_maps_options');
delete_site_option('clicksports_maps_options');
delete_option('clicksports-maps');
delete_site_option('clicksports-maps');

