#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'language_payment_araratbank'
wp option delete 'rewrite_rules'
wp option delete 'hkd_araratbank_version_option'
wp option delete 'hkd_araratbank_checkout_id'
wp option delete 'hkdump'
wp option delete 'woocommerce_checkout_page_id'

# Clear Cron Jobs
wp cron event delete 'cronCheckOrderArarat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FailedMessageArarat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FailedMessageArarat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FailedMessageArarat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FailedMessageArarat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bindingInfo_araratbank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bindingInfo_araratbank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bindingInfo_araratbank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bindingInfo_araratbank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'recurringChargeARARAT%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'recurringChargeARARAT%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'recurringChargeARARAT%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recurringChargeARARAT%'"
