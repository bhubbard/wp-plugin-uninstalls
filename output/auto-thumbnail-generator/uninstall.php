<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jzdv_bg_color');
delete_site_option('jzdv_bg_color');
delete_option('jzdv_font_color');
delete_site_option('jzdv_font_color');
delete_option('jzdv_font_size');
delete_site_option('jzdv_font_size');

