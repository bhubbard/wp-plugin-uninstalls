#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_ginger_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_credit-card_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bank_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bank_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bank_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bank_reference'"
