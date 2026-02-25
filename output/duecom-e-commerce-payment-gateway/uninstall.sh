#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_due_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_due_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_due_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_due_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_due_transaction_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_due_transaction_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_due_transaction_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_due_transaction_data'"
