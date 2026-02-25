#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_szamlazz_auto_invoice_status'
wp option delete 'wc_szamlazz_auto_void_status'
wp option delete 'wc_szamlazz_automations'
wp option delete 'wc_szamlazz_advanced_options'
wp option delete 'wc_szamlazz_vat_overrides'
wp option delete 'wc_szamlazz_eusafa'
wp option delete '_wc_szamlazz_ipn_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_meta'"
wp option delete 'wc_szamlazz_extra_accounts'
wp option delete 'wc_szamlazz_notes'
wp option delete 'wc_szamlazz_payment_method_options_v2'
wp option delete 'wc_szamlazz_accounting_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_szamlazz_%'"
wp option delete '_wc_szamlazz_cookie_name'
wp option delete '_wc_szamlazz_db_version'
wp option delete 'wc_szamlazz_version_number'
wp option delete 'woocommerce_wc_szamlazz_settings'
wp option delete 'wc_szamlazz_vat_number_type'
wp option delete 'wc_szamlazz_invoice_type_company'
wp option delete 'woocommerce_wc_szamlazz_settings_old'
wp option delete 'surbma_hc_fields'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_szamlazz_mnb_arfolyam_kozep'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_adoszam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_adoszam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_adoszam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_adoszam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_megjegyzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_megjegyzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_megjegyzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_megjegyzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_tetel_nev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_tetel_nev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_tetel_nev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_tetel_nev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_custom_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_custom_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_custom_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_custom_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_disable_auto_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_disable_auto_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_disable_auto_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_disable_auto_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_hide_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_hide_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_hide_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_hide_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_szamlazz_admin_notices'"
