#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gptcommentagent_enabled'
wp option delete 'gptcommentagent_openai_api_key'
wp option delete 'gptcommentagent_model'
wp option delete 'gptcommentagent_tone'
wp option delete 'gptcommentagent_max_tokens'
wp option delete 'gptcommentagent_google_cse_id'
wp option delete 'gptcommentagent_google_cse_key'
wp option delete 'gptcommentagent_version'
wp option delete 'gptcommentagent_usage_log'
wp option delete 'gptcommentagent_activity_log'
wp option delete 'gpt_comment_agent_usage_log'

# Delete Transients
wp transient delete 'gptcommentagent_cache'

