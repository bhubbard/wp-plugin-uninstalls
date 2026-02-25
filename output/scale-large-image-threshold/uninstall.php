<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slit_image_threshold');
delete_site_option('slit_image_threshold');
delete_option('slit_image_threshold_disable');
delete_site_option('slit_image_threshold_disable');

