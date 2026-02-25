#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpify-woo-display-subscription'
wp option delete 'wpify-woo-delivery-days-option-update'
wp option delete 'wpify_delivery_dates_admin_notice_dismissed'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'wpify_woo_heureka_xml_categories'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpify_woo_heureka_xml_categories_%'"
wp option delete 'mapy_cz_api_key'
wp option delete 'wpify_logs_max_files'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wpify_core_all_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpify_core_plugin_update_data_%' OR option_name LIKE '_site_transient_wpify_core_plugin_update_data_%'"
wp transient delete 'wpify_core_news'
wp transient delete 'wpify_redirect'

# Clear Cron Jobs
wp cron event delete 'wpifycf_cleanup_temp_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpify_woo_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpify_woo_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpify_woo_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpify_woo_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpify_woo_delivery_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpify_woo_delivery_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpify_woo_delivery_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpify_woo_delivery_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_ic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_ic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_ic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_ic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_dic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_dic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_dic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_dic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_dic_dph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_dic_dph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_dic_dph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_dic_dph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic_dph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_dic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_dic_dph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpify_woo_heureka_product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpify_woo_heureka_product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpify_woo_heureka_product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpify_woo_heureka_product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpify_woo_heureka_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpify_woo_heureka_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpify_woo_heureka_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpify_woo_heureka_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpify_woo_heureka_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpify_woo_heureka_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpify_woo_heureka_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpify_woo_heureka_category'"
