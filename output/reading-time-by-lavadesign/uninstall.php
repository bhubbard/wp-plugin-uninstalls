<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lava_reading_wpm');
delete_site_option('lava_reading_wpm');
delete_option('lava_reading_show_icon');
delete_site_option('lava_reading_show_icon');
delete_option('lava_reading_icon_style');
delete_site_option('lava_reading_icon_style');

