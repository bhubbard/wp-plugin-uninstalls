#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkd_acba_version_option'
wp option delete 'language_payment_acba_bank'
wp option delete 'hkd_acba_credit_agricole_checkout_id'
wp option delete 'hkd_check_activation_acba'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'hkdump'

# Clear Cron Jobs
wp cron event delete 'cronCheckOrder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isBindingOrder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bindingInfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bindingInfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bindingInfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bindingInfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'recurringChargeACBA%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'recurringChargeACBA%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'recurringChargeACBA%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recurringChargeACBA%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FailedMessageACBA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FailedMessageACBA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FailedMessageACBA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FailedMessageACBA'"
