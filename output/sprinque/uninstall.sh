#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sprinque_seller'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'sprinque_available_countries'
wp option delete 'woocommerce_wpm_srinque_pay_settings'
wp option delete 'logs_sprinque'
wp option delete 'sprinque_available_payment_terms'

# Clear Cron Jobs
wp cron event delete 'sprinque_retry_capture_request'
wp cron event delete 'sprinque_update_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'merchant_buyer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'merchant_buyer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'merchant_buyer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'merchant_buyer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buyer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buyer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buyer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buyer_id'"
