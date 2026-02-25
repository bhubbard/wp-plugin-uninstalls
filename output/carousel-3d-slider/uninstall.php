<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carousel_3d_slider_options');
delete_site_option('carousel_3d_slider_options');

