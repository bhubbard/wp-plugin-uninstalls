<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quran_playlist_form');
delete_site_option('quran_playlist_form');
delete_option('show_quran_playlist_rss');
delete_site_option('show_quran_playlist_rss');
delete_option('show_playlist_pdf');
delete_site_option('show_playlist_pdf');
delete_option('show_playlist_podcast');
delete_site_option('show_playlist_podcast');
delete_option('show_playlist_txt');
delete_site_option('show_playlist_txt');
delete_option('show_playlist_MediaPlayer');
delete_site_option('show_playlist_MediaPlayer');
delete_option('show_playlist_QuickTime');
delete_site_option('show_playlist_QuickTime');
delete_option('show_playlist_realplayer');
delete_site_option('show_playlist_realplayer');
delete_option('show_playlist_Winamp');
delete_site_option('show_playlist_Winamp');
delete_option('show_playlist_tunein');
delete_site_option('show_playlist_tunein');
delete_option('playlist_title');
delete_site_option('playlist_title');
delete_option('quran_playlist_id');
delete_site_option('quran_playlist_id');

