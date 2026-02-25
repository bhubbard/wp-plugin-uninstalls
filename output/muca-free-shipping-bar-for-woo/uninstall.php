<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MUCAFSB_amount');
delete_site_option('MUCAFSB_amount');
delete_option('MUCAFSB_initial_message');
delete_site_option('MUCAFSB_initial_message');
delete_option('MUCAFSB_progress_message1');
delete_site_option('MUCAFSB_progress_message1');
delete_option('MUCAFSB_progress_message2');
delete_site_option('MUCAFSB_progress_message2');
delete_option('MUCAFSB_goal_achieved_message');
delete_site_option('MUCAFSB_goal_achieved_message');
delete_option('MUCAFSB_bg_color');
delete_site_option('MUCAFSB_bg_color');
delete_option('MUCAFSB_text_color');
delete_site_option('MUCAFSB_text_color');
delete_option('MUCAFSB_special_text_color');
delete_site_option('MUCAFSB_special_text_color');
delete_option('MUCAFSB_bar_padding');
delete_site_option('MUCAFSB_bar_padding');
delete_option('MUCAFSB_font_size');
delete_site_option('MUCAFSB_font_size');
delete_option('MUCAFSB_bar_activation');
delete_site_option('MUCAFSB_bar_activation');

