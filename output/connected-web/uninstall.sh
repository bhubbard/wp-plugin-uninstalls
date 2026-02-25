#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'use_popular_tags'
wp option delete 'custom_keywords'
wp option delete 'use_default_cache'
wp option delete 'can_cache'
wp option delete 'cache_expire_milliseconds'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_gender'"
