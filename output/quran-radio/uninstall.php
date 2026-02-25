<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('radio_key');
delete_site_option('radio_key');
delete_option('show_radio_url');
delete_site_option('show_radio_url');
delete_option('show_radio_pdf');
delete_site_option('show_radio_pdf');
delete_option('show_radio_podcast');
delete_site_option('show_radio_podcast');
delete_option('show_radio_alllinks');
delete_site_option('show_radio_alllinks');
delete_option('show_radio_MediaPlayer');
delete_site_option('show_radio_MediaPlayer');
delete_option('show_radio_QuickTime');
delete_site_option('show_radio_QuickTime');
delete_option('show_radio_realplayer');
delete_site_option('show_radio_realplayer');
delete_option('show_radio_Winamp');
delete_site_option('show_radio_Winamp');
delete_option('show_radio_appstore');
delete_site_option('show_radio_appstore');
delete_option('show_radio_tunein');
delete_site_option('show_radio_tunein');
delete_option('show_radio_soundcloud');
delete_site_option('show_radio_soundcloud');
delete_option('show_radio_twitter');
delete_site_option('show_radio_twitter');
delete_option('show_radio_facebook');
delete_site_option('show_radio_facebook');
delete_option('check_autostart');
delete_site_option('check_autostart');
delete_option('radio_title');
delete_site_option('radio_title');
delete_option('hidden_radio_player');
delete_site_option('hidden_radio_player');
delete_option('hidden_radio_title');
delete_site_option('hidden_radio_title');

