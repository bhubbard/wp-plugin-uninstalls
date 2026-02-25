#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_filetype'
wp option delete 'cc_class'
wp option delete 'cc_relationship'
wp option delete 'cc_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link'"
