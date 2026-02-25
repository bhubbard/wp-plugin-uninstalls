#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SimplyInApiConnection'
wp option delete 'SimplyIn_Backend_Url'
wp option delete 'SimplyIn_Environment'
wp option delete 'simplyin_register_by_default'
wp option delete 'SimplyInShippingMappingCache'
wp option delete 'SimplyInSettingsErrorMsg'
wp option delete 'SimplyInSettingsSuccessMsg'
wp option delete 'SimplyInRegisterByDefaultDisabled'
wp option delete 'simplyin_api_key'
wp option delete 'SimplyInLogisticsPartnersOrder'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_order_pay_endpoint'
wp option delete 'SIMPLYIN_DOCS_INFO'
wp option delete 'woocommerce_version'
wp option delete 'SimplyIn_Api_Logs'
wp option delete 'woocommerce_simplyin_settings'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'SimplyInShippingIntegrations'
wp option delete 'SimplyInSwitchLastChange'
wp option delete 'SimplyInLastSyncTimestamp'
wp option delete 'SimplyInTransactionHistoryLengthDay'
wp option delete 'SimplyInRegisterByDefaultStateOld'

# Clear Cron Jobs
wp cron event delete 'simplyin_add_udpate_cron_interval'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simplyin_payment_timeout_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simplyin_payment_timeout_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simplyin_payment_timeout_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simplyin_payment_timeout_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simplyin_payment_timeout_failed_payment_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simplyin_payment_timeout_failed_payment_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simplyin_payment_timeout_failed_payment_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simplyin_payment_timeout_failed_payment_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SimplyInUserExist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SimplyInUserExist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SimplyInUserExist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SimplyInUserExist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SimplyInUserHmacEmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SimplyInUserHmacEmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SimplyInUserHmacEmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SimplyInUserHmacEmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SimplyInUserStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SimplyInUserStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SimplyInUserStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SimplyInUserStatus'"
