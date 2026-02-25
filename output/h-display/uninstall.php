<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('h_message');
delete_site_option('h_message');
delete_option('txt_align');
delete_site_option('txt_align');
delete_option('color');
delete_site_option('color');
delete_option('bg_color');
delete_site_option('bg_color');
delete_option('font_size');
delete_site_option('font_size');
delete_option('padding');
delete_site_option('padding');

