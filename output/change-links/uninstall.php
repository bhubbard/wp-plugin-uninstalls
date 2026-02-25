<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('font_size');
delete_site_option('font_size');
delete_option('font_color');
delete_site_option('font_color');
delete_option('font_style');
delete_site_option('font_style');
delete_option('color');
delete_site_option('color');

