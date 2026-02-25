<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elebits_gmap_key');
delete_site_option('elebits_gmap_key');
delete_option('elebits_active_modules');
delete_site_option('elebits_active_modules');

