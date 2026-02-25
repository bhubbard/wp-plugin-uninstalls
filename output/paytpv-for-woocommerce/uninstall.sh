#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paytpv_settings'
wp option delete 'woocommerce_paycomet_bancontact_settings'
wp option delete 'woocommerce_paycomet_bizum_settings'
wp option delete 'woocommerce_paycomet_eps_settings'
wp option delete 'woocommerce_paycomet_giropay_settings'
wp option delete 'woocommerce_paycomet_ideal_settings'
wp option delete 'woocommerce_paycomet_instantcredit_settings'
wp option delete 'woocommerce_paycomet_klarna_settings'
wp option delete 'woocommerce_paycomet_klarnapayments_settings'
wp option delete 'woocommerce_paycomet_mbway_settings'
wp option delete 'woocommerce_paycomet_multibanco_settings'
wp option delete 'woocommerce_paycomet_mybank_settings'
wp option delete 'woocommerce_paycomet_paypal_settings'
wp option delete 'woocommerce_paycomet_paysafecard_settings'
wp option delete 'woocommerce_paycomet_paysera_settings'
wp option delete 'woocommerce_paycomet_postfinance_settings'
wp option delete 'woocommerce_paycomet_przelewy_settings'
wp option delete 'woocommerce_paycomet_qiwi_settings'
wp option delete 'woocommerce_paycomet_skrill_settings'
wp option delete 'woocommerce_paycomet_trustly_settings'
wp option delete 'woocommerce_paycomet_waylet_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_paytpv_terminals'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'paytpv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayTPV_methodData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayTPV_methodData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayTPV_methodData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayTPV_methodData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'entityNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'entityNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'entityNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'entityNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referenceNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referenceNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referenceNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referenceNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ErrorID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ErrorID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ErrorID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ErrorID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayTPV_Referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayTPV_Referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayTPV_Referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayTPV_Referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayTPV_IdUser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayTPV_IdUser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayTPV_IdUser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayTPV_IdUser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayTPV_TokenUser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayTPV_TokenUser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayTPV_TokenUser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayTPV_TokenUser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paytpv_savecard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paytpv_savecard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paytpv_savecard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paytpv_savecard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'AuthCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'AuthCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'AuthCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'AuthCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PayTPV_MethodName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PayTPV_MethodName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PayTPV_MethodName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PayTPV_MethodName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
