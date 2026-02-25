#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_iamport_sdk_version'
wp option delete 'iamport_user_code'
wp option delete 'iamport_rest_key'
wp option delete 'iamport_rest_secret'
wp option delete 'woocommerce_iamport_strip_line_feed_in_address'
wp option delete 'woocommerce_iamport_app_scheme'
wp option delete '_iamport_customer_prefix'
wp option delete 'woocommerce_iamport_refund_status_label'
wp option delete 'woocommerce_iamport_exchange_status_label'
wp option delete 'woocommerce_iamport_awaiting_vbank_status_label'
wp option delete 'woocommerce_iamport_card_max_quota'
wp option delete 'woocommerce_iamport_custom_status_as_paid'
wp option delete 'woocommerce_iamport_eximbay_settings'
wp option delete 'woocommerce_iamport_subscription_quota_description'
wp option delete '_iamport_rsa_keyphrase'
wp option delete '_iamport_rsa_private_key'
wp option delete 'woocommerce_iamport_subscription_checking_amount'
wp option delete 'woocommerce_iamport_auto_complete'
wp option delete 'woocommerce_iamport_exchange_capable'
wp option delete 'woocommerce_iamport_exchange_limit'
wp option delete 'woocommerce_iamport_refund_capable'
wp option delete 'woocommerce_iamport_refund_limit'
wp option delete 'woocommerce_iamport_naverpay_ext_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_uid'"
