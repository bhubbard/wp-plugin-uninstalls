<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmse_enable_setting');
delete_site_option('gmse_enable_setting');
delete_option('gmse_flakes_number');
delete_site_option('gmse_flakes_number');
delete_option('gmse_select_weather');
delete_site_option('gmse_select_weather');
delete_option('gmse_make');
delete_site_option('gmse_make');
delete_option('gmse_flake_icon_type');
delete_site_option('gmse_flake_icon_type');
delete_option('gmse_flake_image_type');
delete_site_option('gmse_flake_image_type');
delete_option('gmse_minimum_size');
delete_site_option('gmse_minimum_size');
delete_option('gmse_maximum_size');
delete_site_option('gmse_maximum_size');
delete_option('gmse_minimum_falling');
delete_site_option('gmse_minimum_falling');
delete_option('gmse_maximum_falling');
delete_site_option('gmse_maximum_falling');
delete_option('gmse_flakes_shadow');
delete_site_option('gmse_flakes_shadow');
delete_option('gmse_icon_color');
delete_site_option('gmse_icon_color');

