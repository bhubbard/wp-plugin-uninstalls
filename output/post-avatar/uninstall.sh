#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gklpa_showinwritepage'
wp option delete 'gklpa_mydir'
wp option delete 'gklpa_before'
wp option delete 'gklpa_after'
wp option delete 'gklpa_class'
wp option delete 'gklpa_getsize'
wp option delete 'gklpa_scanrecursive'
wp option delete 'gklpa_showincontent'
wp option delete 'gklpa_showinfeeds'
wp option delete 'gkl_postavatar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postuserpic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postuserpic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postuserpic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postuserpic'"
