#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thumordoreact_label_text'
wp option delete 'thumordoreact_like_text'
wp option delete 'thumordoreact_dislike_text'
wp option delete 'thumordoreact_color'
wp option delete 'thumordoreact_thumb_size'
wp option delete 'thumordoreact_count_size'
wp option delete 'thumordoreact_vote_message_size'
wp option delete 'thumordoreact_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumordoreact_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumordoreact_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumordoreact_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumordoreact_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumordoreact_dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumordoreact_dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumordoreact_dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumordoreact_dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_thumordoreact_ip_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_thumordoreact_ip_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_thumordoreact_ip_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_thumordoreact_ip_%'"
