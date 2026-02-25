#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'templates-list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-bui-template'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mvb_nag_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mvb_nag_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mvb_nag_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mvb_nag_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_voted_IP_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_voted_IP_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_voted_IP_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_voted_IP_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_votes_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_votes_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_votes_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_votes_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mvb_rating_VL_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mvb_rating_VL_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mvb_rating_VL_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mvb_rating_VL_%'"
