<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('container');
delete_site_option('container');
delete_option('styles');
delete_site_option('styles');
delete_option('border_radius');
delete_site_option('border_radius');
delete_option('scrollbar_height');
delete_site_option('scrollbar_height');
delete_option('color');
delete_site_option('color');
delete_option('color1');
delete_site_option('color1');

