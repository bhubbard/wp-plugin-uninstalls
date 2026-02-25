#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repostra_auto_publish'
wp option delete 'repostra_default_category'
wp option delete 'repostra_default_author'
wp option delete 'repostra_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'repostra_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'repostra_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'repostra_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'repostra_post_id'"
