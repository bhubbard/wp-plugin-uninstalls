<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('the_preloader_settings');
delete_site_option('the_preloader_settings');
delete_option('the_preloader_first_use');
delete_site_option('the_preloader_first_use');
delete_option('wptpreloader_image');
delete_site_option('wptpreloader_image');
delete_option('wptpreloader_bg_color');
delete_site_option('wptpreloader_bg_color');

