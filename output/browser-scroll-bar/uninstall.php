<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsb_display_options');
delete_site_option('bsb_display_options');
delete_option('bsb_about_options');
delete_site_option('bsb_about_options');

