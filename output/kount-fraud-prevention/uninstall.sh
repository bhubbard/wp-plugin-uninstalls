#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'kms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kount_account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kount_account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kount_account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kount_account_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kount_login_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kount_login_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kount_login_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kount_login_status'"
