#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbcf_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'iugu_subscription_discount_type'
wp option delete 'woocommerce_iugu-credit-card_settings'
wp option delete 'woocommerce_iugu-payment-booklets_settings'
wp option delete 'woocommerce_iugu-bank-slip_settings'
wp option delete '_wc_iugu_webhook_created'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iugu_number_installments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iugu_number_installments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iugu_number_installments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iugu_number_installments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iugu_customer_id_date_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iugu_customer_id_date_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iugu_customer_id_date_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iugu_customer_id_date_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_validou_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_validou_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_validou_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_validou_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iugu_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iugu_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iugu_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iugu_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iugu_payable_with'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iugu_payable_with'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iugu_payable_with'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iugu_payable_with'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_status_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_status_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_status_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_status_message'"
