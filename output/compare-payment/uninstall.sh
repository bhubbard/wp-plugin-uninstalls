#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'compare_payment_values'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_own'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_own'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_own'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_own'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_trans_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_trans_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_trans_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_trans_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_trans_additoinal_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_trans_additoinal_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_trans_additoinal_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_trans_additoinal_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_min_trans_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_min_trans_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_min_trans_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_min_trans_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_card_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_card_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_card_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_card_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_card_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_card_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_card_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_card_bottom'"
