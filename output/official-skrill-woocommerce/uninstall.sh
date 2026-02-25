#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'skrill_completed_status'
wp option delete 'skrill_merchant_id'
wp option delete 'skrill_merchant_account'
wp option delete 'skrill_recipient_desc'
wp option delete 'skrill_logo_url'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'skrill_secret_word'
wp option delete 'skrill_api_passwd'
wp option delete 'woocommerce_skrill_acc_settings'
wp option delete 'skrill_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
