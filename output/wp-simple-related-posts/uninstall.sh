#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sirp_options'
wp option delete 'simple_related_posts_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_related_posts'"
