<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flickrAPI_flickrid');
delete_site_option('flickrAPI_flickrid');
delete_option('flickrAPI_settings');
delete_site_option('flickrAPI_settings');
delete_option('flickrAPI_version');
delete_site_option('flickrAPI_version');
delete_option('widget_flickrAPI');
delete_site_option('widget_flickrAPI');

