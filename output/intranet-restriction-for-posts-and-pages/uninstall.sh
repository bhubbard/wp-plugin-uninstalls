#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intranet_restriction_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wd_restrict_intranet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wd_restrict_intranet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wd_restrict_intranet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wd_restrict_intranet'"
