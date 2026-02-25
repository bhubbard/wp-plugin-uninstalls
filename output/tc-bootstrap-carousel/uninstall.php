<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('number_slides');
delete_site_option('number_slides');
delete_option('header_color');
delete_site_option('header_color');
delete_option('text_color');
delete_site_option('text_color');
delete_option('display_header');
delete_site_option('display_header');
delete_option('display_text');
delete_site_option('display_text');

