#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doobp-uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doobp-cf-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doobp-cf-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doobp-cf-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doobp-cf-keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doobp-cf-viewport-width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doobp-cf-viewport-width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doobp-cf-viewport-width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doobp-cf-viewport-width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doobp-cf-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doobp-cf-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doobp-cf-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doobp-cf-description'"
