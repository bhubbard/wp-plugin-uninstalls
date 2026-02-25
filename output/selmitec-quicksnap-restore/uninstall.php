<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selmiqsr_include_uploads');
delete_site_option('selmiqsr_include_uploads');
delete_option('selmiqsr_prune_same_name');
delete_site_option('selmiqsr_prune_same_name');
delete_option('selmiqsr_exclude_patterns');
delete_site_option('selmiqsr_exclude_patterns');
delete_option('selmiqsr_tg_enabled');
delete_site_option('selmiqsr_tg_enabled');
delete_option('selmiqsr_tg_bot_token');
delete_site_option('selmiqsr_tg_bot_token');
delete_option('selmiqsr_tg_chat_id');
delete_site_option('selmiqsr_tg_chat_id');

