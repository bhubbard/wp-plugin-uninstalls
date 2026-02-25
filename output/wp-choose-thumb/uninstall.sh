#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wct_styling'
wp option delete 'wct_nothumb'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_thumb'"
