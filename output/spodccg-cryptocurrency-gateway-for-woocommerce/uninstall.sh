#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccg_txid_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccg_txid_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccg_txid_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccg_txid_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spodccg-total-ccg-hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spodccg-total-ccg-hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spodccg-total-ccg-hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spodccg-total-ccg-hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spodccg-rate-ccg-hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spodccg-rate-ccg-hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spodccg-rate-ccg-hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spodccg-rate-ccg-hidden'"
