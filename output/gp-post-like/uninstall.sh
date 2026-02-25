#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gppl_add_post_like_button'
wp option delete 'gppl_beforecontent_like_button'
wp option delete 'gppl_aftercontent_like_button'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voted_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voted_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voted_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voted_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'votes_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'votes_count'"
