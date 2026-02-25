#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpp_dismissed'
wp option delete 'wpp_settings'

# Delete Transients
wp transient delete 'wpp_sponsors_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
