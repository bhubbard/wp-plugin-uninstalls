<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msntt_product_naver_talktalk');
delete_site_option('msntt_product_naver_talktalk');
delete_option('msntt_naver_talktalk_banner');
delete_site_option('msntt_naver_talktalk_banner');
delete_option('msntt_naver_talktalk_pc_banner_id');
delete_site_option('msntt_naver_talktalk_pc_banner_id');
delete_option('msntt_naver_talktalk_mobile_banner_id');
delete_site_option('msntt_naver_talktalk_mobile_banner_id');
delete_option('msntt_product_naver_talktalk_button');
delete_site_option('msntt_product_naver_talktalk_button');
delete_option('msntt_pc_product_key');
delete_site_option('msntt_pc_product_key');
delete_option('msntt_mobile_product_key');
delete_site_option('msntt_mobile_product_key');
delete_option('msntt_use_plus_friends_product_talk');
delete_site_option('msntt_use_plus_friends_product_talk');
delete_option('msntt_plus_friends_product_talk_hook');
delete_site_option('msntt_plus_friends_product_talk_hook');
delete_option('msntt_use_plus_friends_global_talk');
delete_site_option('msntt_use_plus_friends_global_talk');
delete_option('msntt_plus_friends_product_talk_type');
delete_site_option('msntt_plus_friends_product_talk_type');
delete_option('msntt_plus_friends_product_talk_size');
delete_site_option('msntt_plus_friends_product_talk_size');
delete_option('msntt_plus_friends_product_talk_color');
delete_site_option('msntt_plus_friends_product_talk_color');
delete_option('msntt_plus_friends_product_talk_button_type');
delete_site_option('msntt_plus_friends_product_talk_button_type');
delete_option('msntt_plus_friends_product_talk_mobile_image_url');
delete_site_option('msntt_plus_friends_product_talk_mobile_image_url');
delete_option('msntt_plus_friends_product_talk_pc_image_url');
delete_site_option('msntt_plus_friends_product_talk_pc_image_url');
delete_option('msntt_plus_friends_app_key');
delete_site_option('msntt_plus_friends_app_key');
delete_option('msntt_plus_friends_id');
delete_site_option('msntt_plus_friends_id');
delete_option('msntt_plus_friends_global_talk_type');
delete_site_option('msntt_plus_friends_global_talk_type');
delete_option('msntt_plus_friends_global_talk_size');
delete_site_option('msntt_plus_friends_global_talk_size');
delete_option('msntt_plus_friends_global_talk_color');
delete_site_option('msntt_plus_friends_global_talk_color');
delete_option('msntt_plus_friends_global_talk_button_type');
delete_site_option('msntt_plus_friends_global_talk_button_type');
delete_option('msntt_plus_friends_global_talk_mobile_image_url');
delete_site_option('msntt_plus_friends_global_talk_mobile_image_url');
delete_option('msntt_plus_friends_global_talk_pc_image_url');
delete_site_option('msntt_plus_friends_global_talk_pc_image_url');

