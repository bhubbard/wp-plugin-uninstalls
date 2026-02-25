<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faq_display_mode');
delete_site_option('faq_display_mode');
delete_option('cat_h_color');
delete_site_option('cat_h_color');
delete_option('ques_bg_color');
delete_site_option('ques_bg_color');
delete_option('ques_txt_color');
delete_site_option('ques_txt_color');
delete_option('ques_bdr_color');
delete_site_option('ques_bdr_color');
delete_option('ans_bg_color');
delete_site_option('ans_bg_color');
delete_option('ans_txt_color');
delete_site_option('ans_txt_color');
delete_option('ans_bdr_color');
delete_site_option('ans_bdr_color');
delete_option('faq_icon_color');
delete_site_option('faq_icon_color');
delete_option('act_icon_color');
delete_site_option('act_icon_color');

