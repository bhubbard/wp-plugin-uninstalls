<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icon_color');
delete_site_option('icon_color');
delete_option('background_color');
delete_site_option('background_color');
delete_option('loader_icon');
delete_site_option('loader_icon');

