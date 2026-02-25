<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('attorneyconnect_ai_website_code');
delete_site_option('attorneyconnect_ai_website_code');
delete_option('attorneyconnect_ai_widget_bar_placement');
delete_site_option('attorneyconnect_ai_widget_bar_placement');
delete_option('attorneyconnect_ai_feature_color');
delete_site_option('attorneyconnect_ai_feature_color');
delete_option('attorneyconnect_ai_text_color');
delete_site_option('attorneyconnect_ai_text_color');
delete_option('attorneyconnect_ai_include_title_button');
delete_site_option('attorneyconnect_ai_include_title_button');
delete_option('attorneyconnect_ai_include_call_button');
delete_site_option('attorneyconnect_ai_include_call_button');
delete_option('attorneyconnect_ai_include_email_button');
delete_site_option('attorneyconnect_ai_include_email_button');
delete_option('attorneyconnect_ai_include_chat_button');
delete_site_option('attorneyconnect_ai_include_chat_button');
delete_option('attorneyconnect_ai_show_powered_by');
delete_site_option('attorneyconnect_ai_show_powered_by');
delete_option('attorneyconnect_ai_show_floating_chat_button');
delete_site_option('attorneyconnect_ai_show_floating_chat_button');
delete_option('attorneyconnect_ai_engagement_time');
delete_site_option('attorneyconnect_ai_engagement_time');

