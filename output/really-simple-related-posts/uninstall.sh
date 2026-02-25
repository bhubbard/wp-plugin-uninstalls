#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rja_related_posts_category_tag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsrp_disable_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsrp_disable_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsrp_disable_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsrp_disable_related_posts'"
