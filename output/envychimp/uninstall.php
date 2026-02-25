<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_settings3');
delete_site_option('new_settings3');
delete_option('new_settings2');
delete_site_option('new_settings2');
delete_option('new_settings1');
delete_site_option('new_settings1');
delete_option('new_settings');
delete_site_option('new_settings');
delete_option('background_picture');
delete_site_option('background_picture');
delete_option('new_settings_two');
delete_site_option('new_settings_two');
delete_option('background_picture_two');
delete_site_option('background_picture_two');
delete_option('new_settings4');
delete_site_option('new_settings4');

