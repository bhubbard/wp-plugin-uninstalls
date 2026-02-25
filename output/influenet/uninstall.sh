#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'influenet_api_key'
wp option delete 'influenet_author_id'
wp option delete 'influenet_author'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_influenet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_influenet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_influenet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_influenet'"
