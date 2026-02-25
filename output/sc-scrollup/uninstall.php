<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scupSettings_icon_size');
delete_site_option('scupSettings_icon_size');
delete_option('scupSettings_speed');
delete_site_option('scupSettings_speed');
delete_option('scupSettings_width');
delete_site_option('scupSettings_width');
delete_option('scupSettings_height');
delete_site_option('scupSettings_height');
delete_option('scupSettings_distance_right');
delete_site_option('scupSettings_distance_right');
delete_option('scupSettings_distance_bottom');
delete_site_option('scupSettings_distance_bottom');
delete_option('scupSettings_background');
delete_site_option('scupSettings_background');
delete_option('scupSettings_icon_color');
delete_site_option('scupSettings_icon_color');
delete_option('scupSettings_icon');
delete_site_option('scupSettings_icon');

