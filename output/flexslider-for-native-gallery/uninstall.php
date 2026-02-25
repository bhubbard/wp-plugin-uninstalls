<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_flexslider');
delete_site_option('show_flexslider');
delete_option('flexslider_image_size');
delete_site_option('flexslider_image_size');

