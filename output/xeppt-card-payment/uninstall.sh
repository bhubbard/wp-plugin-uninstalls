#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CardHolderName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CardHolderName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CardHolderName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CardHolderName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CardNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CardNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CardNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CardNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_amt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_amt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_amt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_amt'"
