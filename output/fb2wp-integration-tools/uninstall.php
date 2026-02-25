<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mxp_fb2wp_db_version');
delete_site_option('mxp_fb2wp_db_version');
delete_option('mxp_fb2wp_callback_url');
delete_site_option('mxp_fb2wp_callback_url');
delete_option('mxp_fb_enable_jssdk');
delete_site_option('mxp_fb_enable_jssdk');
delete_option('mxp_fb2wp_image_width');
delete_site_option('mxp_fb2wp_image_width');
delete_option('mxp_fb2wp_image_height');
delete_site_option('mxp_fb2wp_image_height');
delete_option('mxp_fb2wp_video_width');
delete_site_option('mxp_fb2wp_video_width');
delete_option('mxp_fb2wp_video_height');
delete_site_option('mxp_fb2wp_video_height');
delete_option('mxp_fb2wp_post_footer');
delete_site_option('mxp_fb2wp_post_footer');
delete_option('mxp_fb_quote_enable');
delete_site_option('mxp_fb_quote_enable');
delete_option('mxp_fb_page_id');
delete_site_option('mxp_fb_page_id');
delete_option('mxp_fb_messenger_theme_color');
delete_site_option('mxp_fb_messenger_theme_color');
delete_option('mxp_fb_messenger_logged_in_greeting');
delete_site_option('mxp_fb_messenger_logged_in_greeting');
delete_option('mxp_fb_messenger_logged_out_greeting');
delete_site_option('mxp_fb_messenger_logged_out_greeting');
delete_option('mxp_fb_messenger_greeting_dialog_delay');
delete_site_option('mxp_fb_messenger_greeting_dialog_delay');
delete_option('mxp_fb_messenger_embed');
delete_site_option('mxp_fb_messenger_embed');
delete_option('mxp_fb_save_enable');
delete_site_option('mxp_fb_save_enable');
delete_option('mxp_fb_widget_place');
delete_site_option('mxp_fb_widget_place');
delete_option('mxp_fb_functions_section_title');
delete_site_option('mxp_fb_functions_section_title');
delete_option('mxp_fb_comments_enable');
delete_site_option('mxp_fb_comments_enable');
delete_option('mxp_fb_app_id');
delete_site_option('mxp_fb_app_id');
delete_option('mxp_fb_api_version');
delete_site_option('mxp_fb_api_version');
delete_option('mxp_fb_jssdk_local');
delete_site_option('mxp_fb_jssdk_local');
delete_option('mxp_messenger_msglist');
delete_site_option('mxp_messenger_msglist');
delete_option('mxp_fb_clear_url_cache');
delete_site_option('mxp_fb_clear_url_cache');
delete_option('mxp_fb_app_access_token');
delete_site_option('mxp_fb_app_access_token');
delete_option('mxp_fb2wp_rating_import');
delete_site_option('mxp_fb2wp_rating_import');
delete_option('mxp_fb_webhooks_verify_token');
delete_site_option('mxp_fb_webhooks_verify_token');
delete_option('mxp_fb_secret');
delete_site_option('mxp_fb_secret');
delete_option('mxp_fb2wp_messenger_enable_pass_thread');
delete_site_option('mxp_fb2wp_messenger_enable_pass_thread');
delete_option('mxp_fb2wp_messenger_enable_pass_thread_btn_text');
delete_site_option('mxp_fb2wp_messenger_enable_pass_thread_btn_text');
delete_option('mxp_messenger_default_reply');
delete_site_option('mxp_messenger_default_reply');
delete_option('mxp_fb2wp_messenger_auth_users');
delete_site_option('mxp_fb2wp_messenger_auth_users');
delete_option('mxp_fb2wp_messenger_enable');
delete_site_option('mxp_fb2wp_messenger_enable');
delete_option('mxp_fb2wp_comment_mirror_enable');
delete_site_option('mxp_fb2wp_comment_mirror_enable');
delete_option('mxp_fb2wp_comment_mirror_approved');
delete_site_option('mxp_fb2wp_comment_mirror_approved');
delete_option('mxp_fb2wp_post_enable');
delete_site_option('mxp_fb2wp_post_enable');
delete_option('mxp_fb2wp_auth_users');
delete_site_option('mxp_fb2wp_auth_users');
delete_option('mxp_fb2wp_default_title');
delete_site_option('mxp_fb2wp_default_title');
delete_option('mxp_fb2wp_post_type');
delete_site_option('mxp_fb2wp_post_type');
delete_option('mxp_fb2wp_post_tags');
delete_site_option('mxp_fb2wp_post_tags');
delete_option('mxp_fb2wp_no_post_tag');
delete_site_option('mxp_fb2wp_no_post_tag');
delete_option('mxp_fb2wp_post_category');
delete_site_option('mxp_fb2wp_post_category');
delete_option('mxp_fb2wp_post_status');
delete_site_option('mxp_fb2wp_post_status');
delete_option('mxp_fb2wp_post_author');
delete_site_option('mxp_fb2wp_post_author');
delete_option('mxp_fb2wp_post_comment_status');
delete_site_option('mxp_fb2wp_post_comment_status');
delete_option('mxp_fb2wp_post_ping_status');
delete_site_option('mxp_fb2wp_post_ping_status');
delete_option('mxp_fb2wp_default_display_embed');
delete_site_option('mxp_fb2wp_default_display_embed');
delete_option('mxp_fb2wp_default_display_attachment');
delete_site_option('mxp_fb2wp_default_display_attachment');
delete_option('mxp_fb2wp_default_display_img_caption');
delete_site_option('mxp_fb2wp_default_display_img_caption');
delete_option('mxp_enable_debug');
delete_site_option('mxp_enable_debug');
delete_option('mxp_complete_remove');
delete_site_option('mxp_complete_remove');
delete_option('mxp_fb_send_enable');
delete_site_option('mxp_fb_send_enable');
delete_option('mxp_remove_plugin_debug_log');
delete_site_option('mxp_remove_plugin_debug_log');
delete_option('mxp_fb2wp_active_tab');
delete_site_option('mxp_fb2wp_active_tab');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_bot_sleep', '_site_transient_%_bot_sleep' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mxp_fb2wp_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mxp_fb2wp_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mxp_fb2wp_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mxp_fb2wp_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mxp_fb2wp_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mxp_fb2wp_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mxp_fb2wp_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mxp_fb2wp_item' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mxp_fb2wp_sender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mxp_fb2wp_sender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mxp_fb2wp_sender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mxp_fb2wp_sender' ) );

