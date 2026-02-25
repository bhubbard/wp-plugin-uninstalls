#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'infixs_pingo_notify_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_sub_order'"
