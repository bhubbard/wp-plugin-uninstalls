<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scgp_chatgpt_max_tokens');
delete_site_option('scgp_chatgpt_max_tokens');
delete_option('scgp_chatgpt_api_key');
delete_site_option('scgp_chatgpt_api_key');
delete_option('scgp_chatgpt_start_prompt');
delete_site_option('scgp_chatgpt_start_prompt');
delete_option('scgp_last_counter_reset_date');
delete_site_option('scgp_last_counter_reset_date');
delete_option('scgp_chatgpt_tokens_sent');
delete_site_option('scgp_chatgpt_tokens_sent');
delete_option('scgp_chatgpt_tokens_received');
delete_site_option('scgp_chatgpt_tokens_received');

