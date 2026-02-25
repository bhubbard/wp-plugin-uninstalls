#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whp_modern_related_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrp_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrp_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrp_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrp_related_posts'"
