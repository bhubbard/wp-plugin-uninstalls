#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sepordeh_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_card_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_card_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_card_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_card_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_number'"
