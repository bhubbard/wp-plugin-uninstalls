#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'learnpress_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sepay_transaction_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sepay_transaction_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sepay_transaction_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sepay_transaction_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sepay_paid_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sepay_paid_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sepay_paid_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sepay_paid_amount'"
