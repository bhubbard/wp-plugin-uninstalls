<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bg-color');
delete_site_option('bg-color');
delete_option('text-size');
delete_site_option('text-size');
delete_option('googlemap_button_text');
delete_site_option('googlemap_button_text');
delete_option('googlemap_link');
delete_site_option('googlemap_link');

