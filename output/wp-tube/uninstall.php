<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_tube_user');
delete_site_option('wp_tube_user');
delete_option('wp_tube_cat');
delete_site_option('wp_tube_cat');
delete_option('wp_tube_lud');
delete_site_option('wp_tube_lud');
delete_option('wp_tube_default_player');
delete_site_option('wp_tube_default_player');
delete_option('wp_tube_player_colors');
delete_site_option('wp_tube_player_colors');
delete_option('wp_tube_player_width_x');
delete_site_option('wp_tube_player_width_x');
delete_option('wp_tube_player_width_y');
delete_site_option('wp_tube_player_width_y');
delete_option('wp_tube_bump');
delete_site_option('wp_tube_bump');
delete_option('wp_tube_custom_player');
delete_site_option('wp_tube_custom_player');
delete_option('wp_tube_dbv');
delete_site_option('wp_tube_dbv');

