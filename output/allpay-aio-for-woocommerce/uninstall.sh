#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_innovext_allpay_aio_settings'

# Clear Cron Jobs
wp cron event delete 'allpay_aio_auto_update_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RtnCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RtnCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RtnCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RtnCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PaymentType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PaymentType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PaymentType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PaymentType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_MerchantTradeNo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_MerchantTradeNo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_MerchantTradeNo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_MerchantTradeNo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ExpireDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ExpireDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ExpireDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ExpireDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PayUse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PayUse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PayUse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PayUse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allpay_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allpay_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allpay_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allpay_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_bank_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_bank_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_bank_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_bank_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_bank_vaccount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_bank_vaccount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_bank_vaccount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_bank_vaccount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allpay_cvs_payment_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allpay_cvs_payment_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allpay_cvs_payment_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allpay_cvs_payment_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
