#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsdaddads_installed_at'
wp option delete 'lsd_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_ad'"
