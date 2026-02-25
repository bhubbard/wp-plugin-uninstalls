<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('co_chessboard_size');
delete_site_option('co_chessboard_size');
delete_option('co_chessboard_alignment');
delete_site_option('co_chessboard_alignment');
delete_option('co_lightsquare_color');
delete_site_option('co_lightsquare_color');
delete_option('co_darksquare_color');
delete_site_option('co_darksquare_color');
delete_option('co_display_infolabel');
delete_site_option('co_display_infolabel');
delete_option('co_link_text');
delete_site_option('co_link_text');
delete_option('co_link_url');
delete_site_option('co_link_url');
delete_option('co_link_target');
delete_site_option('co_link_target');

