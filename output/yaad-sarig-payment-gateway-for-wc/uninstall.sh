#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_calc_taxes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaad_postpone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaad_postpone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaad_postpone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaad_postpone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaadpay_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaadpay_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaadpay_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaadpay_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaadpay_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaadpay_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaadpay_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaadpay_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yaad_credit_card_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yaad_credit_card_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yaad_credit_card_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yaad_credit_card_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'HKId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'HKId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'HKId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'HKId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payment Gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payment Gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payment Gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payment Gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaadpay_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaadpay_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaadpay_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaadpay_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaadpay_tokef_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaadpay_tokef_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaadpay_tokef_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaadpay_tokef_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaadpay_tokef_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaadpay_tokef_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaadpay_tokef_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaadpay_tokef_year'"
