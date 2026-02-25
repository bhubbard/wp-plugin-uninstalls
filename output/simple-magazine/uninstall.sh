#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplemag-apple-app-id'
wp option delete 'simplemag-google-analytics'
wp option delete 'simplemag-magazine-name'
wp option delete 'array_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simplemag_issue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simplemag_issue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simplemag_issue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simplemag_issue'"
