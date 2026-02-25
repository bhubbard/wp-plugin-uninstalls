#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_summary_generator_api_url'
wp option delete 'ai_summary_generator_api_token'
wp option delete 'ai_summary_generator_model_name'
wp option delete 'ai_summary_generator_prompt'
wp option delete 'ai_summary_generator_homepage_override'
wp option delete 'ai_summary_generator_update_on_post_update'
wp option delete 'ai_summary_generator_max_retries'
wp option delete 'ai_summary_homepage_override'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_summary_generator_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_summary_generator_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_summary_generator_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_summary_generator_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_summary_generator_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_summary_generator_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_summary_generator_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_summary_generator_last_modified'"
