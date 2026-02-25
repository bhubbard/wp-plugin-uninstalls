#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pay-post-by-sms-allowed-ip-address'
wp option delete 'pay-post-by-sms-shortcode'
wp option delete 'pay-post-by-sms-keyword'
wp option delete 'pay-post-by-sms-price'
wp option delete 'pay-post-by-sms-get-phone-key'
wp option delete 'pay-post-by-sms-get-shortcode-key'
wp option delete 'pay-post-by-sms-get-message-key'
wp option delete 'pay-post-by-sms-get-transactionid-key'
wp option delete 'pay_post_by_sms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pay_post_by_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pay_post_by_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pay_post_by_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pay_post_by_sms'"
