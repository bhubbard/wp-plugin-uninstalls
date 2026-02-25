<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rw_slider_image_check_db');
delete_site_option('rw_slider_image_check_db');
delete_option('rw_slider_image_check_version');
delete_site_option('rw_slider_image_check_version');

