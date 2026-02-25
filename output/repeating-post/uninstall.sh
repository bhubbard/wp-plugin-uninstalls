#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duplicate_post_copyexcerpt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_date'"
