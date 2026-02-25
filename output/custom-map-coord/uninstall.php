<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-map-latitude');
delete_site_option('custom-map-latitude');
delete_option('custom-map-longitude');
delete_site_option('custom-map-longitude');

