#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_deferred_admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_transactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_transactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_transactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_transactionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_orderId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_orderId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_orderId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_orderId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_ibft_bank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_ibft_bank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_ibft_bank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_ibft_bank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_accNo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_accNo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_accNo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_accNo'"
