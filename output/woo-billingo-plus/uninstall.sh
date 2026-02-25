#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_billingo_plus_auto_invoice_status'
wp option delete 'wc_billingo_plus_auto_void_status'
wp option delete 'wc_billingo_plus_automations'
wp option delete 'wc_billingo_plus_advanced_options'
wp option delete 'wc_billingo_plus_vat_overrides'
wp option delete 'wc_billingo_plus_eusafa'
wp option delete 'wc_billingo_public_key'
wp option delete 'wc_billingo_api_key'
wp option delete '_wc_billingo_plus_migrated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_plus_%'"
wp option delete 'wc_billingo_electronic'
wp option delete 'wc_billingo_plus_invoice_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_payment_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_paymentdue_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_mark_as_paid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_proforma_%'"
wp option delete 'wc_billingo_plus_payment_method_options'
wp option delete '_wc_billingo_plus_migrating'
wp option delete 'wc_billingo_plus_api_key'
wp option delete '_wc_billingo_plus_migrating_finished'
wp option delete '_wc_billingo_plus_migrated_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_meta'"
wp option delete '_wc_billingo_pro_enabled'
wp option delete '_wc_billingo_pro_key'
wp option delete '_wc_billingo_pro_email'
wp option delete '_wc_billingo_pro_expiration_date'
wp option delete 'wc_billingo_plus_additional_accounts'
wp option delete 'wc_billingo_plus_notes'
wp option delete 'wc_billingo_plus_rounding_options'
wp option delete '_wc_billingo_plus_db_version'
wp option delete 'wc_billingo_plus_version_number'
wp option delete 'woocommerce_wc_billingo_plus_settings'
wp option delete 'wc_billingo_plus_vat_number_type'
wp option delete 'wc_billingo_plus_invoice_type_company'
wp option delete 'woocommerce_wc_billingo_plus_settings_old'
wp option delete 'surbma_hc_fields'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete '_wc_billingo_plus_error'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_billingo_plus_invoice_blocks'
wp transient delete 'wc_billingo_plus_bank_accounts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_adoszam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_adoszam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_adoszam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_adoszam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_billingo_plus_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_billingo_plus_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_billingo_plus_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_billingo_plus_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_mennyisegi_egyseg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_megjegyzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_megjegyzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_megjegyzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_megjegyzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_tetel_nev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_tetel_nev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_tetel_nev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_tetel_nev'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_disable_auto_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_disable_auto_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_disable_auto_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_disable_auto_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_hide_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_hide_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_hide_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_hide_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_custom_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_custom_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_custom_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_custom_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_billingo_plus_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_billingo_plus_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_billingo_plus_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_billingo_plus_admin_notices'"
