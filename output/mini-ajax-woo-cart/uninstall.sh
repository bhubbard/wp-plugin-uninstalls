#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'majc_first_activation'
wp option delete 'majc_dismissed_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwcc_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwcc_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwcc_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwcc_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'majc_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'majc_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'majc_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'majc_dismissed_notices'"
