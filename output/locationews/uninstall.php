<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('locationews_options');
delete_site_option('locationews_options');
delete_option('locationews_user');
delete_site_option('locationews_user');
delete_option('locationews_json_settings');
delete_site_option('locationews_json_settings');
delete_option('locationews_activated');
delete_site_option('locationews_activated');
delete_option('_locationews_trash');
delete_site_option('_locationews_trash');
delete_option('_locationews_user');
delete_site_option('_locationews_user');

