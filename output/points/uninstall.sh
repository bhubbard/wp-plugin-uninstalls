#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'points-comments_enable'
wp option delete 'points-comments'
wp option delete 'points-welcome'
wp option delete 'points-points_label'
wp option delete 'points-points_singular_label'
wp option delete 'points-points_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
