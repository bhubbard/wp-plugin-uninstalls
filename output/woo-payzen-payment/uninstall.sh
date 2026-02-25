#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payzen_settings'
wp option delete 'woocommerce_payzensubscription_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'woocommerce_payzenwcssubscription_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_payzenstd_settings'
wp option delete 'woocommerce_payzenregroupedother_settings'
wp option delete 'woocommerce_payzenmulti_settings'
wp option delete 'woocommerce_payzenchoozeo_settings'
wp option delete 'woocommerce_payzenklarna_settings'
wp option delete 'woocommerce_payzenfranfinance_settings'
wp option delete 'woocommerce_payzensepa_settings'
wp option delete 'site_name'

# Delete Transients
wp transient delete 'payzen_email_send_msg'
wp transient delete 'payzen_session_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_token_data_%' OR option_name LIKE '_site_transient_payzen_token_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_token_data_identifier_%' OR option_name LIKE '_site_transient_payzen_token_data_identifier_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_token_%' OR option_name LIKE '_site_transient_payzen_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_token_identifier_%' OR option_name LIKE '_site_transient_payzen_token_identifier_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzenfranfinance_option_%' OR option_name LIKE '_site_transient_payzenfranfinance_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzenmulti_option_%' OR option_name LIKE '_site_transient_payzenmulti_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzenregroupedother_card_type_%' OR option_name LIKE '_site_transient_payzenregroupedother_card_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_notices_%' OR option_name LIKE '_site_transient_payzen_notices_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzenchoozeo_option_%' OR option_name LIKE '_site_transient_payzenchoozeo_option_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_hide_smartbutton_%' OR option_name LIKE '_site_transient_payzen_hide_smartbutton_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_js_vars_%' OR option_name LIKE '_site_transient_payzen_js_vars_%'"
wp transient delete 'payzen_cancelled_subscription_error_msg'
wp transient delete 'payzen_update_subscription_error_msg'
wp transient delete 'payzen_renewal_error_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzen_id_token_%' OR option_name LIKE '_site_transient_payzen_id_token_%'"
wp transient delete 'payzen_other_methods'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_payzensubscription_change_payment_%' OR option_name LIKE '_site_transient_payzensubscription_change_payment_%'"
wp transient delete 'payzen_online_refund_result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Transaction ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Sequence number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Sequence number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Sequence number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Sequence number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzenfranfinance_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzenfranfinance_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzenfranfinance_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzenfranfinance_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzenmulti_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzenmulti_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzenmulti_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzenmulti_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzenstd_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzenstd_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzenstd_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzenstd_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzenmulti_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzenmulti_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzenmulti_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzenmulti_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzenregroupedother_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzenregroupedother_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzenregroupedother_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzenregroupedother_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Card number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Card number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Card number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Card number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'IBAN / BIC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'IBAN / BIC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'IBAN / BIC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'IBAN / BIC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Means of payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Means of payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Means of payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Means of payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Card expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Card expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Card expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Card expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Authorized amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Authorized amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Authorized amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Authorized amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Installments number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Installments number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Installments number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Installments number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payzen_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payzen_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payzen_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payzen_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_masked_pan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_masked_pan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_masked_pan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_masked_pan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Subscription ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Subscription amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Subscription amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Subscription amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Subscription amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Effect date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Effect date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Effect date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Effect date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Initial amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Initial amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Initial amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Initial amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Initial amount count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Initial amount count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Initial amount count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Initial amount count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_card_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_card_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_card_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_card_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Recurrence number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Recurrence number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Recurrence number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Recurrence number'"
