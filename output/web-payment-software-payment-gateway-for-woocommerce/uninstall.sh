#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orginal_paygate_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orginal_paygate_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orginal_paygate_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orginal_paygate_transaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paygate_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paygate_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paygate_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paygate_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_approval_code_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_approval_code_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_approval_code_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_approval_code_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paygate_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paygate_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paygate_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paygate_transaction_type'"
