<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpaic_display_location');
delete_site_option('wpaic_display_location');
delete_option('wpaic_gemini_api_key');
delete_site_option('wpaic_gemini_api_key');
delete_option('wpaic_brand_color');
delete_site_option('wpaic_brand_color');
delete_option('wpaic_welcome_message');
delete_site_option('wpaic_welcome_message');
delete_option('wpaic_chat_title');
delete_site_option('wpaic_chat_title');
delete_option('wpaic_bot_avatar_url');
delete_site_option('wpaic_bot_avatar_url');
delete_option('wpaic_copy_trigger_enabled');
delete_site_option('wpaic_copy_trigger_enabled');
delete_option('wpaic_exit_intent_enabled');
delete_site_option('wpaic_exit_intent_enabled');
delete_option('wpaic_time_trigger_enabled');
delete_site_option('wpaic_time_trigger_enabled');
delete_option('wpaic_add_to_cart_enabled');
delete_site_option('wpaic_add_to_cart_enabled');
delete_option('wpaic_copy_trigger_text');
delete_site_option('wpaic_copy_trigger_text');
delete_option('wpaic_footer_text');
delete_site_option('wpaic_footer_text');
delete_option('wpaic_contact_info');
delete_site_option('wpaic_contact_info');

