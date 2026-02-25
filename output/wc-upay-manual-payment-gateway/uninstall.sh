#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hasib_upay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upay_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upay_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upay_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upay_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upay_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upay_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upay_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upay_transaction'"
