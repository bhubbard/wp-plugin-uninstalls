#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ssv_payment_settings'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssv_transaction_resp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssv_transaction_resp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssv_transaction_resp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssv_transaction_resp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssv_transaction_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssv_transaction_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssv_transaction_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssv_transaction_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ssv_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ssv_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ssv_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ssv_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
