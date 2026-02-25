<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_horariodeapertura24_widgetwo');
delete_site_option('wp_horariodeapertura24_widgetwo');
delete_option('wp_horariodeapertura24_widgetwas');
delete_site_option('wp_horariodeapertura24_widgetwas');
delete_option('wp_horariodeapertura24_titlecolor');
delete_site_option('wp_horariodeapertura24_titlecolor');
delete_option('wp_horariodeapertura24_titlebgcolor');
delete_site_option('wp_horariodeapertura24_titlebgcolor');
delete_option('wp_horariodeapertura24_textcolor');
delete_site_option('wp_horariodeapertura24_textcolor');
delete_option('wp_horariodeapertura24_textbgcolor');
delete_site_option('wp_horariodeapertura24_textbgcolor');
delete_option('wp_horariodeapertura24_buttoncolor');
delete_site_option('wp_horariodeapertura24_buttoncolor');
delete_option('wp_horariodeapertura24_buttonbgcolor');
delete_site_option('wp_horariodeapertura24_buttonbgcolor');

