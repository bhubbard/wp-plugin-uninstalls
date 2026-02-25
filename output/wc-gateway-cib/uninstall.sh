#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_cib_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_cib'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_cib'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_cib'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_cib'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
