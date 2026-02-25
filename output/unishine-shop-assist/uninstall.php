<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ai_chatbot_api_url');
delete_site_option('wp_ai_chatbot_api_url');
delete_option('wp_ai_chatbot_api_key');
delete_site_option('wp_ai_chatbot_api_key');
delete_option('wp_ai_chatbot_title');
delete_site_option('wp_ai_chatbot_title');
delete_option('wp_ai_chatbot_position');
delete_site_option('wp_ai_chatbot_position');
delete_option('wp_ai_chatbot_theme');
delete_site_option('wp_ai_chatbot_theme');
delete_option('unishine_shop_assist_api_url');
delete_site_option('unishine_shop_assist_api_url');
delete_option('unishine_shop_assist_api_key');
delete_site_option('unishine_shop_assist_api_key');
delete_option('unishine_shop_assist_title');
delete_site_option('unishine_shop_assist_title');
delete_option('unishine_shop_assist_position');
delete_site_option('unishine_shop_assist_position');
delete_option('unishine_shop_assist_theme');
delete_site_option('unishine_shop_assist_theme');

