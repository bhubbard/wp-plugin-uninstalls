#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwmellat_dismissed'
wp option delete 'pwmellatnew_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WC_BankMellat_settleSaleOrderId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WC_BankMellat_settleSaleOrderId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WC_BankMellat_settleSaleOrderId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WC_BankMellat_settleSaleOrderId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WC_BankMellat_settleSaleReferenceId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WC_BankMellat_settleSaleReferenceId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WC_BankMellat_settleSaleReferenceId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WC_BankMellat_settleSaleReferenceId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
