<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('home_slider_height');
delete_site_option('home_slider_height');
delete_option('home_slider_width');
delete_site_option('home_slider_width');

