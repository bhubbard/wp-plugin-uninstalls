#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_shipping_method_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%apikey_shipsmart'"
wp option delete 'ss_shipping_contracts'
wp option delete 'ss_apikey_shipsmart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_measure'"
wp option delete 'ss_api_verification'
wp option delete 'ss_show_api_verification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_freight_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_taxable_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_insurance_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_freight_cost_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_taxable_cost_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_checkout_insurance_cost_%'"
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'

# Delete Transients
wp transient delete 'ssfw_admin_activation'
wp transient delete 'ssfw_admin_desactivation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ss_quotation_%' OR option_name LIKE '_site_transient_ss_quotation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ss_cart_%' OR option_name LIKE '_site_transient_ss_cart_%'"

# Clear Cron Jobs
wp cron event delete 'update_status_orders_cron'
wp cron event delete 'get_documents_orders_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_hs_code_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_hs_code_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_hs_code_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_hs_code_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_cost_base_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_cost_base_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_cost_base_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_cost_base_product'"
