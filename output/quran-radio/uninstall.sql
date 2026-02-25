-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('radio_key', 'show_radio_url', 'show_radio_pdf', 'show_radio_podcast', 'show_radio_alllinks', 'show_radio_MediaPlayer', 'show_radio_QuickTime', 'show_radio_realplayer', 'show_radio_Winamp', 'show_radio_appstore', 'show_radio_tunein', 'show_radio_soundcloud', 'show_radio_twitter', 'show_radio_facebook', 'check_autostart', 'radio_title', 'hidden_radio_player', 'hidden_radio_title');

