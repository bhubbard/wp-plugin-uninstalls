#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'longshot_ai_api_key'
wp option delete 'longshot_ai_unique_id'
wp option delete 'longshot_ai_auth_id'
wp option delete 'longshot_ai_extension_allowed'
wp option delete 'longshot_ai_persistent_message'
wp option delete 'longshot_ai_feedback_dismissed'
wp option delete 'longshot_ai_feedback_given'
wp option delete 'longshot_ai_feedback_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'longshot_ai_%'"
wp option delete 'longshot_ai_author_id'

# Delete Transients
wp transient delete 'longshot_ai_login_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longshot_ai_post_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longshot_ai_post_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longshot_ai_post_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longshot_ai_post_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longshot_ai_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longshot_ai_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longshot_ai_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longshot_ai_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longshot_ai_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longshot_ai_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longshot_ai_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longshot_ai_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longshot_ai_semantic_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longshot_ai_semantic_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longshot_ai_semantic_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longshot_ai_semantic_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longshot_ai_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longshot_ai_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longshot_ai_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longshot_ai_meta_description'"
