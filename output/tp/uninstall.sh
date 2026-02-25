#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tp_options'
wp option delete 'tp_app_options'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_profile_image'"
