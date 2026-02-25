#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shiptimize_cnpj'
wp option delete 'shiptimize_cpf'
wp option delete 'shiptimize_neighborhood'
wp option delete 'shiptimize_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shiptimize_export_statuses-%'"
wp option delete 'inspire_checkout_fields_settings'
wp option delete 'shiptimize_custom_checkout_fields'
wp option delete 'mh_wc_table_rate_plus_table_rates'
wp option delete 'mh_wc_table_rate_plus_services'
wp option delete 'mh_wc_table_rate_plus_zones'
wp option delete 'shiptimize_table_rate_shipping_plus'
wp option delete 'shiptimize_pickupdisable'
wp option delete 'shiptimize_labelagree'
wp option delete 'shiptimize_export_virtual_products'
wp option delete 'shiptimize_export_virtual_orders'
wp option delete 'shiptmize_token'
wp option delete 'shiptimize_token_expires'
wp option delete 'shiptimize_test'
wp option delete 'shiptimize_maps_key'
wp option delete 'shiptimize_autoexport'
wp option delete 'shiptimize_hide_not_free'
wp option delete 'shiptimize_public_key'
wp option delete 'shiptimize_private_key'
wp option delete 'shiptimize_usewpapi'
wp option delete 'shiptimize_settings'
wp option delete 'shiptimize_carriers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shiptimize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'shiptimize_servicelevelids'
wp option delete 'active_sitewide_plugins'
wp option delete 'shiptimize_db_version'
wp option delete 'shiptimize_provinces'
wp option delete 'rewrite_rules'
wp option delete 'shiptimize_version'
wp option delete 'shiptimize_token'
wp option delete 'shiptimize_callbackurl'
wp option delete 'shiptimize_app_version'
wp option delete 'shiptimize_wcfm_master_account'
wp option delete 'shiptimize_default_shipping_type'
wp option delete '_wcfmmp_state_rates'
wp option delete 'shiptimize_wcfmmp_shipping_rates'
wp option delete '_wcfmmp_shipping_by_weight'
wp option delete 'shiptimize_wcfmmp_shipping_rates_by_weight'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimizepickuplabel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimizepickuplabel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimizepickuplabel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimizepickuplabel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_trackingid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_trackingid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_trackingid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_trackingid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_marketplace_installed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_marketplace_installed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_marketplace_installed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_marketplace_installed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_private_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_private_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_private_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_private_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_public_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_public_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_public_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_public_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_token_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_token_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_token_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_token_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_enable_selling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shiptimizebck%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shiptimizebck%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shiptimizebck%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shiptimizebck%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimizebckshiptimize_default_shipping_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimizebckshiptimize_default_shipping_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimizebckshiptimize_default_shipping_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimizebckshiptimize_default_shipping_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiptimize_autoexport'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiptimize_autoexport'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiptimize_autoexport'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiptimize_autoexport'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_street_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_street_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_street_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_street_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_street_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_street_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_street_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_street_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
