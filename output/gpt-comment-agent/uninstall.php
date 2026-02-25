<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gptcommentagent_enabled');
delete_site_option('gptcommentagent_enabled');
delete_option('gptcommentagent_openai_api_key');
delete_site_option('gptcommentagent_openai_api_key');
delete_option('gptcommentagent_model');
delete_site_option('gptcommentagent_model');
delete_option('gptcommentagent_tone');
delete_site_option('gptcommentagent_tone');
delete_option('gptcommentagent_max_tokens');
delete_site_option('gptcommentagent_max_tokens');
delete_option('gptcommentagent_google_cse_id');
delete_site_option('gptcommentagent_google_cse_id');
delete_option('gptcommentagent_google_cse_key');
delete_site_option('gptcommentagent_google_cse_key');
delete_option('gptcommentagent_version');
delete_site_option('gptcommentagent_version');
delete_option('gptcommentagent_usage_log');
delete_site_option('gptcommentagent_usage_log');
delete_option('gptcommentagent_activity_log');
delete_site_option('gptcommentagent_activity_log');
delete_option('gpt_comment_agent_usage_log');
delete_site_option('gpt_comment_agent_usage_log');

// Delete Transients
delete_transient('gptcommentagent_cache');
delete_site_transient('gptcommentagent_cache');

