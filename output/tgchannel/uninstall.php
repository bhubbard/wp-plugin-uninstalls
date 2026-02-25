<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TG_Channel_background');
delete_site_option('TG_Channel_background');
delete_option('TG_Channel_background_color');
delete_site_option('TG_Channel_background_color');
delete_option('TG_Channel_Header_color');
delete_site_option('TG_Channel_Header_color');
delete_option('TG_Channel_Footer_color');
delete_site_option('TG_Channel_Footer_color');
delete_option('TG_Channel_Header_Font_color');
delete_site_option('TG_Channel_Header_Font_color');
delete_option('TG_Channel_Footer_Font_color');
delete_site_option('TG_Channel_Footer_Font_color');
delete_option('TG_Channel_Header_Font_size');
delete_site_option('TG_Channel_Header_Font_size');
delete_option('TG_Channel_Footer_Font_size');
delete_site_option('TG_Channel_Footer_Font_size');
delete_option('TG_Channel_Header_Height');
delete_site_option('TG_Channel_Header_Height');
delete_option('TG_Channel_Footer_Height');
delete_site_option('TG_Channel_Footer_Height');
delete_option('TG_Channel_Body_height');
delete_site_option('TG_Channel_Body_height');
delete_option('TG_Channel_Body_width');
delete_site_option('TG_Channel_Body_width');
delete_option('TG_Channel_body_size');
delete_site_option('TG_Channel_body_size');
delete_option('TG_Channel_link');
delete_site_option('TG_Channel_link');
delete_option('TG_Channel_name');
delete_site_option('TG_Channel_name');
delete_option('TG_Channel_postid');
delete_site_option('TG_Channel_postid');
delete_option('TG_channel_Bot_Token');
delete_site_option('TG_channel_Bot_Token');
delete_option('TG_Channel_username');
delete_site_option('TG_Channel_username');
delete_option('TG_Channel_saving_count');
delete_site_option('TG_Channel_saving_count');

