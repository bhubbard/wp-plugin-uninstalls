#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tranpoto_enable_for_posts'
wp option delete 'tranpoto_enable_for_pages'
wp option delete 'tranpoto_target_language'
wp option delete 'tranpoto_google_translate_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_translated_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_translated_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_translated_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_translated_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_translated_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_translated_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_translated_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_translated_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_translated_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_translated_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_translated_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_translated_lang'"
