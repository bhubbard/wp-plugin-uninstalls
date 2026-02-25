<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('svz_font_name');
delete_site_option('svz_font_name');
delete_option('svz_font_size');
delete_site_option('svz_font_size');
delete_option('svz_background_color');
delete_site_option('svz_background_color');

