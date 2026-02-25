#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wirecard_split_app_id'
wp option delete 'wirecard_split_secret'
wp option delete 'wirecard_split_nonce'
wp option delete 'wirecard_split_user'
wp option delete 'wcfm_page_options'
wp option delete 'wcfm_endpoints'
wp option delete 'dokan_selling'
wp option delete 'wcfm_commission_options'
wp option delete 'wcbcf_settings'
wp option delete 'wirecard_split_accesstoken'
wp option delete 'wirecard_split_siteurl'
wp option delete 'wirecard_split_redirecturl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_billet_linecode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_billet_linecode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_billet_linecode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_billet_linecode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_billet_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_billet_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_billet_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_billet_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_creditcard_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_creditcard_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_creditcard_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_creditcard_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_creditcard_cpf_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_creditcard_cpf_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_creditcard_cpf_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_creditcard_cpf_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_creditcard_birth_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_creditcard_birth_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_creditcard_birth_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_creditcard_birth_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbo_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbo_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbo_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbo_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wirecard_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wirecard_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wirecard_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wirecard_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wirecard_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wirecard_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wirecard_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wirecard_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moip_bundle_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moip_bundle_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moip_bundle_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moip_bundle_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moip_order_authorized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moip_order_authorized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moip_order_authorized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moip_order_authorized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_moip_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_moip_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_moip_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_moip_payment_type'"
