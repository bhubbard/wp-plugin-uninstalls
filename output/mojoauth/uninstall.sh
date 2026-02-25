#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mojoauth_option'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mj_user_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mj_user_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mj_user_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mj_user_identifier'"
