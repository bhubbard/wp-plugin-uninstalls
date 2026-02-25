#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ays_advanced_related_posts_upgrade_plugin'
wp option delete 'ays_advanced_related_posts_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_meta'"
