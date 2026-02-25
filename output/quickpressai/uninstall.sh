#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickpress_ai_serpstack_api_key'
wp option delete 'quickpress_ai_api_key'
wp option delete 'quickpress_ai_selected_model'
wp option delete 'quickpress_ai_system_prompt'
wp option delete 'quickpress_ai_system_prompt_option'
wp option delete 'quickpress_ai_title_prompt_template'
wp option delete 'quickpress_ai_content_prompt_template'
wp option delete 'quickpress_ai_excerpt_prompt_template'
wp option delete 'quickpress_ai_temperature'
wp option delete 'quickpress_ai_frequency_penalty'
wp option delete 'quickpress_ai_presence_penalty'
wp option delete 'quickpress_ai_generate_timeout'
wp option delete 'quickpress_ai_encryption_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timestamp'"
wp option delete 'quickpress_ai_serpstack_api_usage'
wp option delete 'quickpress_ai_serpstack_plan'

