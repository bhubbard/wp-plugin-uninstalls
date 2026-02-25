#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olc_awin_id'
wp option delete 'olc_zanox_id'
wp option delete 'olc_disabled_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_olc_disabled_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_olc_disabled_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_olc_disabled_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_olc_disabled_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_olc_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_olc_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_olc_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_olc_disabled'"
