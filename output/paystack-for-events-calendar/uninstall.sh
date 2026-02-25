#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tec_tickets_commerce_paystack_account'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paystack_split_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paystack_split_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paystack_split_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paystack_split_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paystack_sub_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paystack_sub_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paystack_sub_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paystack_sub_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paystack_split_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paystack_split_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paystack_split_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paystack_split_transaction'"
