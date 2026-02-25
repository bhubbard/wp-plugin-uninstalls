#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcpf_fee_tax_class'
wp option delete 'wcpf_name_conflicts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-multiplier'"
