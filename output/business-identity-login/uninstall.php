<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buidlo_logo_type');
delete_site_option('buidlo_logo_type');
delete_option('buidlo_logo');
delete_site_option('buidlo_logo');
delete_option('buidlo_logo_aspect_ratio');
delete_site_option('buidlo_logo_aspect_ratio');
delete_option('buidlo_background_color');
delete_site_option('buidlo_background_color');
delete_option('buidlo_button_color');
delete_site_option('buidlo_button_color');

