<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatster_enc_key');
delete_site_option('chatster_enc_key');
delete_option('chatster_version');
delete_site_option('chatster_version');
delete_option('ch_welcome_notice_viewed');
delete_site_option('ch_welcome_notice_viewed');
delete_option('chatster_api_key');
delete_site_option('chatster_api_key');
delete_option('chatster_bot_qa_options');
delete_site_option('chatster_bot_qa_options');
delete_option('chatster_bot_options');
delete_site_option('chatster_bot_options');
delete_option('chatster_chat_options');
delete_site_option('chatster_chat_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('chatster_remove_old_convs');
wp_clear_scheduled_hook('chatster_verify_presence');
wp_clear_scheduled_hook('chatster_update_presence');
wp_clear_scheduled_hook('chatster_check_new_requests');

