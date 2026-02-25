#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npd_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npd_used_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npd_used_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npd_used_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npd_used_discount'"
