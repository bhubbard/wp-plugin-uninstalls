#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paypal_status'
wp option delete 'paypal_title'
wp option delete 'paypal_api_username'
wp option delete 'paypal_api_password'
wp option delete 'paypal_api_signature'
wp option delete 'paypal_api_merchant_email'
wp option delete 'paypal_mode'
wp option delete 'auth_status'
wp option delete 'auth_title'
wp option delete 'auth_api_username'
wp option delete 'auth_api_signature'
wp option delete 'auth_mode'
wp option delete 'notiemailid'
wp option delete 'stripe_payment_currency'
wp option delete '
				  			stripe_payment_currency'
wp option delete 'stripe_title'
wp option delete 'stripe_status'
wp option delete 'stripe_publish_key'
wp option delete 'stripe_private_key'
wp option delete 'stripe_mode'
wp option delete 'templateid'
wp option delete 'user_email_body'
wp option delete 'admin_email_body'
wp option delete 'user_email_sub'
wp option delete 'admin_email_sub'
wp option delete 'notification_send_type'
wp option delete 'auth_typeofpay'
wp option delete 'auth_renewlength_set_by'
wp option delete 'auth_renewlength'
wp option delete 'auth_relengthunit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transactionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pay_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pay_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pay_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pay_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pay_throygh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pay_throygh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pay_throygh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pay_throygh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_premium_buy_notice_wp_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_premium_buy_notice_wp_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_premium_buy_notice_wp_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_premium_buy_notice_wp_payment'"
