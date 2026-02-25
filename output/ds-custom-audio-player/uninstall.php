<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dscap_player_compact');
delete_site_option('dscap_player_compact');
delete_option('dscap_player_show_volume');
delete_site_option('dscap_player_show_volume');
delete_option('dscap_player_show_download');
delete_site_option('dscap_player_show_download');
delete_option('dscap_player_align');
delete_site_option('dscap_player_align');
delete_option('dscap_player_color');
delete_site_option('dscap_player_color');
delete_option('dscap_player_bg');
delete_site_option('dscap_player_bg');
delete_option('dscap_player_icon_color');
delete_site_option('dscap_player_icon_color');
delete_option('dscap_player_width');
delete_site_option('dscap_player_width');
delete_option('dscap_player_show_meta');
delete_site_option('dscap_player_show_meta');

