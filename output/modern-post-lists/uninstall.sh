#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modern_post_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_external_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_external_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_external_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_external_link'"
