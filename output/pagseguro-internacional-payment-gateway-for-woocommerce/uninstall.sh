#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pagseguro_internacional_wc_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
