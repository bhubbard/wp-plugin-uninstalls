#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'username'
wp option delete 'posting_key'
wp option delete 'default_tags'
wp option delete 'error_reporting_consent'
wp option delete 'wordsteem_notice_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_is_published_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_is_published_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_is_published_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_is_published_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_reward_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_reward_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_reward_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_reward_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_username_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_username_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_username_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_username_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_permalink_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_permalink_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_permalink_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_permalink_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_tags_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_tags_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_tags_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_tags_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordsteem_to_publish_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordsteem_to_publish_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordsteem_to_publish_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordsteem_to_publish_key'"
