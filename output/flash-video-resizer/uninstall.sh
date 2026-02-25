#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fvr_width'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvr-noresize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvr-noresize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvr-noresize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvr-noresize'"
