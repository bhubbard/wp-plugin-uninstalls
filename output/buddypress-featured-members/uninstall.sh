#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buatp_basic_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfm_is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfm_is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfm_is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfm_is_featured'"
