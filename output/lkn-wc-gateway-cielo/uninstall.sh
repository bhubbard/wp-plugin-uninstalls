#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lknCieloProApiLicense'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_lkn_cielo_debit_settings'
wp option delete 'woocommerce_lkn_cielo_credit_settings'
wp option delete 'woocommerce_lkn_wc_cielo_pix_settings'
wp option delete 'woocommerce_lkn_cielo_google_pay_settings'
wp option delete 'lkn_cielo_pro_license_boolean'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wcbcf_settings'
wp option delete 'cielo_wc_pix_settings'

# Clear Cron Jobs
wp cron event delete 'lkn_schedule_check_free_pix_payment_hook'
wp cron event delete 'lkn_remove_custom_cron_job_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lknCieloApiProProdutctInterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lknCieloApiProProdutctInterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lknCieloApiProProdutctInterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lknCieloApiProProdutctInterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
