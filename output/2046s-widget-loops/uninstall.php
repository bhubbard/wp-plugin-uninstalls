<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w2046_options');
delete_site_option('w2046_options');
delete_option('w2046_widget_screen');
delete_site_option('w2046_widget_screen');

