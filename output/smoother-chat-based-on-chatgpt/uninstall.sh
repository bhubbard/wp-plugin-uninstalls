#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scgp_chatgpt_max_tokens'
wp option delete 'scgp_chatgpt_api_key'
wp option delete 'scgp_chatgpt_start_prompt'
wp option delete 'scgp_last_counter_reset_date'
wp option delete 'scgp_chatgpt_tokens_sent'
wp option delete 'scgp_chatgpt_tokens_received'

