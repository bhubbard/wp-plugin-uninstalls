<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a_slideshow_options');
delete_site_option('a_slideshow_options');
delete_option('a_slideshow_custom');
delete_site_option('a_slideshow_custom');
delete_option('a_slideshow_widget');
delete_site_option('a_slideshow_widget');

