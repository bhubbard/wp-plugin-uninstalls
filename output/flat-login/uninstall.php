<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flat_logo_upload');
delete_site_option('flat_logo_upload');
delete_option('flat_logo_url');
delete_site_option('flat_logo_url');
delete_option('flat_logo_title');
delete_site_option('flat_logo_title');
delete_option('flat_bg_color');
delete_site_option('flat_bg_color');
delete_option('flat_custom_style');
delete_site_option('flat_custom_style');
delete_option('flat_logo_width');
delete_site_option('flat_logo_width');
delete_option('flat_logo_height');
delete_site_option('flat_logo_height');

