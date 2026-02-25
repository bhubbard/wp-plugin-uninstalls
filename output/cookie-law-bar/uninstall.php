<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clb_version');
delete_site_option('clb_version');
delete_option('clb_bar_msg');
delete_site_option('clb_bar_msg');
delete_option('clb_bar_pos');
delete_site_option('clb_bar_pos');
delete_option('clb_bar_color');
delete_site_option('clb_bar_color');
delete_option('clb_bar_text_color');
delete_site_option('clb_bar_text_color');
delete_option('clb_btn_msg');
delete_site_option('clb_btn_msg');
delete_option('clb_btn_color');
delete_site_option('clb_btn_color');
delete_option('clb_btn_text_color');
delete_site_option('clb_btn_text_color');

