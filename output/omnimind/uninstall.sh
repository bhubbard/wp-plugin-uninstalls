#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_omni_ai_custom_answer_prompt'
wp option delete '_omni_ai_custom_search_prompt'
wp option delete '_omni_project_id'
wp option delete '_omni_selected_post_types'
wp option delete '_omni_api_key_status'
wp option delete '_omni_api_key'
wp option delete '_omni_project_name'
wp option delete '_omni_ai_search_answer'
wp option delete '_omni_ai_search_content'
wp option delete '_omni_ai_search_cache'
wp option delete '_omni_ai_search_autocomplete'
wp option delete '_omni_ai_search_results_limit'
wp option delete '_omni_ai_search_trust_level'
wp option delete '_omni_ai_cache'
wp option delete '_omni_selected_fields_option'
wp option delete '_omni_uploaded_fields_option'
wp option delete '_omni_last_sync_date'
wp option delete '_omni_chains_cache'
wp option delete '_omni_chain_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__omni_post_count_%' OR option_name LIKE '_site_transient__omni_post_count_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_from_omni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_from_omni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_from_omni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_from_omni'"
