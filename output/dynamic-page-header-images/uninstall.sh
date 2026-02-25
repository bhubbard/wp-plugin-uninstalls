#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dhi_headerimage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhi_headerimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhi_headerimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhi_headerimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhi_headerimage'"
