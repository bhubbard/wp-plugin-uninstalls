#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_anton-fem-event'
wp option delete 'genesis-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fem_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fem_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fem_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fem_featured'"
