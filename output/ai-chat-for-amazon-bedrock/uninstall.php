<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_chat_bedrock_enable_mcp');
delete_site_option('ai_chat_bedrock_enable_mcp');
delete_option('ai_chat_bedrock_settings');
delete_site_option('ai_chat_bedrock_settings');
delete_option('ai_chat_bedrock_mcp_servers');
delete_site_option('ai_chat_bedrock_mcp_servers');

// Delete Transients
delete_transient('ai_chat_bedrock_cache');
delete_site_transient('ai_chat_bedrock_cache');

