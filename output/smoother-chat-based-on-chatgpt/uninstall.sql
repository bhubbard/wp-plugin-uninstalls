-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scgp_chatgpt_max_tokens', 'scgp_chatgpt_api_key', 'scgp_chatgpt_start_prompt', 'scgp_last_counter_reset_date', 'scgp_chatgpt_tokens_sent', 'scgp_chatgpt_tokens_received');

