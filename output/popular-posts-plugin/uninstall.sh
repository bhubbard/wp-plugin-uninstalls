#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popular-posts'
wp option delete 'widget_rrm_popular_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pvc_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pvc_views'"
