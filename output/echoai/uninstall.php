<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('echoai_assistant_image');
delete_site_option('echoai_assistant_image');
delete_option('echoai_post_types');
delete_site_option('echoai_post_types');
delete_option('echoai_floating_button');
delete_site_option('echoai_floating_button');
delete_option('echoai_wp_api_key');
delete_site_option('echoai_wp_api_key');
delete_option('echoai_chat_instructions');
delete_site_option('echoai_chat_instructions');
delete_option('echoai_tooltip_text');
delete_site_option('echoai_tooltip_text');
delete_option('echoai_greeting_message');
delete_site_option('echoai_greeting_message');
delete_option('echoai_assistant_id');
delete_site_option('echoai_assistant_id');
delete_option('echoai_debug_info');
delete_site_option('echoai_debug_info');
delete_option('echoai_last_api_request');
delete_site_option('echoai_last_api_request');
delete_option('echoai_last_api_response');
delete_site_option('echoai_last_api_response');
delete_option('echoai_integration_errors');
delete_site_option('echoai_integration_errors');

// Delete Transients
delete_transient('echoai_pending_assistant_id');
delete_site_transient('echoai_pending_assistant_id');

