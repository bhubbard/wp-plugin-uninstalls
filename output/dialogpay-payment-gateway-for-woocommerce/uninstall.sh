#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_dialogpay_settings'
wp option delete 'woocommerce_dialogpay_enabled'
wp option delete 'woocommerce_dialogpay_title'
wp option delete 'woocommerce_dialogpay_description'
wp option delete 'woocommerce_dialogpay_merchant_id'
wp option delete 'woocommerce_dialogpay_payment_service_id'
wp option delete 'woocommerce_dialogpay_database_name'
wp option delete 'woocommerce_dialogpay_dialogpay_user_name'
wp option delete 'woocommerce_dialogpay_dialogpay_user_password'
wp option delete 'woocommerce_dialogpay_public_key'
wp option delete 'woocommerce_dialogpay_private_key'
wp option delete 'woocommerce_dialogpay_base_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dialogpay_awaiting_webhook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dialogpay_awaiting_webhook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dialogpay_awaiting_webhook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dialogpay_awaiting_webhook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_dialogpay_event_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_dialogpay_event_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_dialogpay_event_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dialogpay_event_%'"
