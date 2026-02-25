<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('background_color');
delete_site_option('background_color');
delete_option('meter_color');
delete_site_option('meter_color');
delete_option('title_color');
delete_site_option('title_color');
delete_option('detail_color');
delete_site_option('detail_color');
delete_option('progress_color');
delete_site_option('progress_color');
delete_option('minor_color');
delete_site_option('minor_color');
delete_option('bar_thick');
delete_site_option('bar_thick');
delete_option('height_option');
delete_site_option('height_option');
delete_option('width_option');
delete_site_option('width_option');

