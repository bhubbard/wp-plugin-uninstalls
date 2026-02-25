#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apb_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apb_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apb_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apb_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apb_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apb_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apb_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apb_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apb_end_date'"
