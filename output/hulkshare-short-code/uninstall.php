<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hulkshare_player_width');
delete_site_option('hulkshare_player_width');
delete_option('hulkshare_player_color');
delete_site_option('hulkshare_player_color');
delete_option('hulkshare_player_download');
delete_site_option('hulkshare_player_download');
delete_option('hulkshare_player_cover');
delete_site_option('hulkshare_player_cover');
delete_option('hulkshare_player_type ');
delete_site_option('hulkshare_player_type ');
delete_option('hulkshare_player_width ');
delete_site_option('hulkshare_player_width ');
delete_option('hulkshare_player_autoplay');
delete_site_option('hulkshare_player_autoplay');
delete_option('hulkshare_player_type');
delete_site_option('hulkshare_player_type');

