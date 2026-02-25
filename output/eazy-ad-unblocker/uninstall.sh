#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eazy-ad-unblocker-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eazy_ad_unblocker_per_page_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eazy_ad_unblocker_per_page_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eazy_ad_unblocker_per_page_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eazy_ad_unblocker_per_page_disabled'"
