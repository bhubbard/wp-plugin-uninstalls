#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PushMessageToWeChat'

# Delete Transients
wp transient delete 'pmtw_pushbear_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pmtw_Submit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pmtw_Submit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pmtw_Submit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pmtw_Submit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
