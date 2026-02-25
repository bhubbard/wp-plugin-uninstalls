#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'partially_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partially_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partially_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partially_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partially_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partially_offer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partially_offer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partially_offer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partially_offer'"
