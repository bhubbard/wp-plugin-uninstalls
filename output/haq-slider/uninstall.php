<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('haq_slider_settings');
delete_site_option('haq_slider_settings');
delete_option('haq_slider_images');
delete_site_option('haq_slider_images');

