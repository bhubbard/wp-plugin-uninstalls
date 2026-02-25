<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wavr_default_server');
delete_site_option('wavr_default_server');
delete_option('wavr_default_bgcolor');
delete_site_option('wavr_default_bgcolor');
delete_option('wavr_default_color');
delete_site_option('wavr_default_color');
delete_option('wavr_default_font');
delete_site_option('wavr_default_font');
delete_option('wavr_default_font_size');
delete_site_option('wavr_default_font_size');
delete_option('wavr_default_width');
delete_site_option('wavr_default_width');
delete_option('wavr_default_height');
delete_site_option('wavr_default_height');

