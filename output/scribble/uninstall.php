<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scribble_hover');
delete_site_option('scribble_hover');
delete_option('scribble_color');
delete_site_option('scribble_color');
delete_option('scribble_thickness');
delete_site_option('scribble_thickness');
delete_option('scribble_del');
delete_site_option('scribble_del');
delete_option('scribble_intensity');
delete_site_option('scribble_intensity');

