#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'add2homescreen'
wp option delete 'style'
wp option delete 'lazyload'
wp option delete 'admob-on-off'
wp option delete 'admob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom5'"
