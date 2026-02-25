#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'applepay_db_version'
wp option delete 'cofi_db_version'
wp option delete 'email_sent'
wp option delete 'lusopaygateway_custom_field_2_value'
wp option delete 'custom_field_2_value'
wp option delete 'woocommerce_multibanco-e-ou-payshop-by-lusopay_settings'
wp option delete 'mbway_db_version'
wp option delete 'mag_db_version'
wp option delete 'pisp_db_version'
wp option delete 'woocommerce_lusopay_applepay_settings'
wp option delete 'woocommerce_lusopay_cofi_settings'
wp option delete 'woocommerce_lusopaygateway_settings'
wp option delete 'woocommerce_lusopay_mbway_settings'
wp option delete 'woocommerce_lusopay_payshop_settings'
wp option delete 'woocommerce_version'
wp option delete 'lusopay_terms_accepted'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notice_lusopaygateway_instrutions_to_client_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notice_lusopaygateway_instrutions_to_client_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notice_lusopaygateway_instrutions_to_client_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notice_lusopaygateway_instrutions_to_client_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notices_lusopaygateway_instrutions_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notices_lusopaygateway_instrutions_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notices_lusopaygateway_instrutions_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notices_lusopaygateway_instrutions_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notice_lusopaygateway_marketing_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notice_lusopaygateway_marketing_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notice_lusopaygateway_marketing_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notice_lusopaygateway_marketing_dismissed'"
