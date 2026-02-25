<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('teoola_username');
delete_site_option('teoola_username');
delete_option('teoola_key');
delete_site_option('teoola_key');
delete_option('teoola_entity');
delete_site_option('teoola_entity');
delete_option('teoola_minified');
delete_site_option('teoola_minified');
delete_option('teoola_show_info');
delete_site_option('teoola_show_info');
delete_option('teoola_header_color');
delete_site_option('teoola_header_color');
delete_option('teoola_bg_icon');
delete_site_option('teoola_bg_icon');
delete_option('teoola_icon');
delete_site_option('teoola_icon');
delete_option('teoola_show_popup');
delete_site_option('teoola_show_popup');
delete_option('teoola_show_events');
delete_site_option('teoola_show_events');
delete_option('teoola_show_news');
delete_site_option('teoola_show_news');
delete_option('teoola_width_popup');
delete_site_option('teoola_width_popup');
delete_option('teoola_chat_question');
delete_site_option('teoola_chat_question');
delete_option('teoola_show_chat');
delete_site_option('teoola_show_chat');
delete_option('teoola_header_color_popup');
delete_site_option('teoola_header_color_popup');
delete_option('teoola_given_name');
delete_site_option('teoola_given_name');
delete_option('teoola_avatar');
delete_site_option('teoola_avatar');

