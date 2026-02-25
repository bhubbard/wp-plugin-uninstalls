<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aio_slideshow_settings');
delete_site_option('aio_slideshow_settings');
delete_option('aio_slideshow_images');
delete_site_option('aio_slideshow_images');

