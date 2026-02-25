#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ai_search_custom_fields_%'"
wp option delete 'ai_search_woocommerce_fields'
wp option delete 'ai_search_provider'
wp option delete 'ai_search_service_token'
wp option delete 'ai_search_show_setup_wizard'
wp option delete 'ai_search_setup_completed'
wp option delete 'ai_search_api_key'
wp option delete 'ai_search_similarity_threshold'
wp option delete 'ai_search_searchable_post_types'
wp option delete 'ai_search_badge_public'
wp option delete 'ai_search_openai_model'
wp option delete 'ai_search_hybrid_enabled'
wp option delete 'ai_search_hybrid_balance'
wp option delete 'ai_search_highlight_enabled'

# Delete Transients
wp transient delete 'ai_search_processed_titles'
wp transient delete 'ai_search_validation_data'
wp transient delete 'ai_search_validation_error'
wp transient delete 'ai_search_quota_error'
wp transient delete 'ai_search_quota_api_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ai_search_embedding_%' OR option_name LIKE '_site_transient_ai_search_embedding_%'"
wp transient delete 'ai_search_used_fallback'
wp transient delete 'ai_search_no_results'
wp transient delete 'ai_search_activation_redirect'
wp transient delete 'ai_search_vocabulary'

# Clear Cron Jobs
wp cron event delete 'ai_search_rebuild_vocabulary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_search_embedding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_search_embedding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_search_embedding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_search_embedding'"
