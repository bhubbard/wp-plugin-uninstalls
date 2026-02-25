<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siuf_widgetID');
delete_site_option('siuf_widgetID');
delete_option('user_nicename');
delete_site_option('user_nicename');
delete_option('siuf_tab_text');
delete_site_option('siuf_tab_text');
delete_option('siuf_tab_color');
delete_site_option('siuf_tab_color');
delete_option('siuf_tab_type');
delete_site_option('siuf_tab_type');
delete_option('siuf_time_on_page');
delete_site_option('siuf_time_on_page');
delete_option('siuf_header_text');
delete_site_option('siuf_header_text');
delete_option('siuf_intro_text');
delete_site_option('siuf_intro_text');
delete_option('siuf_rating_text');
delete_site_option('siuf_rating_text');
delete_option('siuf_feedback_text');
delete_site_option('siuf_feedback_text');

