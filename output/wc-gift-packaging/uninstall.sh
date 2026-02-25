#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gift_packaging_fee'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc-gift-packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc-gift-packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc-gift-packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc-gift-packaging'"
