#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zify_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zify_payCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zify_payCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zify_payCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zify_payCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zify_orderCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zify_orderCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zify_orderCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zify_orderCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
