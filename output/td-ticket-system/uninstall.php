<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('td_tts_db_version');
delete_site_option('td_tts_db_version');
delete_option('td_tts_menuPos');
delete_site_option('td_tts_menuPos');
delete_option('td_tts_styles');
delete_site_option('td_tts_styles');
delete_option('td_tts_notification');
delete_site_option('td_tts_notification');
delete_option('td_tts_responsenote');
delete_site_option('td_tts_responsenote');
delete_option('td_tts_contactForm');
delete_site_option('td_tts_contactForm');
delete_option('td_tts_loginForm');
delete_site_option('td_tts_loginForm');
delete_option('td_tts_successPage');
delete_site_option('td_tts_successPage');

