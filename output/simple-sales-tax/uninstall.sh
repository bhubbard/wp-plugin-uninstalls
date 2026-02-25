#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wootax_version'
wp option delete 'wootax_rate_id'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wc_connect_taxes_enabled'
wp option delete 'wootax_keep_rates'
wp option delete 'checkout_deposits_enabled'
wp option delete 'default_deposits_enabled'
wp option delete 'enable_auto_charge_stripe'
wp option delete 'active_sitewide_plugins'
wp option delete 'sst_messages'
wp option delete 'wootax_shipping_taxable'
wp option delete 'wootax_address1'
wp option delete 'wootax_address2'
wp option delete 'wootax_city'
wp option delete 'wootax_state'
wp option delete 'wootax_zip5'
wp option delete 'wootax_zip4'
wp option delete 'woocommerce_wootax_settings'
wp option delete 'wootax_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tic_%'"
wp option delete '_sst_update_620_address_id_map'
wp option delete '_sst_update_620_products_list'
wp option delete '_sst_update_620_batch_offset'

# Delete Transients
wp transient delete 'sst_verified_addresses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sst_rate_limit_%' OR option_name LIKE '_site_transient_sst_rate_limit_%'"
wp transient delete 'sst_tics'

# Clear Cron Jobs
wp cron event delete 'sst_update_data_mover_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wootax_tic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wootax_tic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wootax_tic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wootax_tic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_origin_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_origin_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_origin_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_origin_addresses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_sub_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_address1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_address2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_wcmp_sub_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_lookup_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_lookup_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_lookup_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_lookup_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_cart_taxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_cart_taxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_cart_taxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_cart_taxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_first_found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_first_found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_first_found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_first_found'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_shipping_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_shipping_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_shipping_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_shipping_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wootax_origin_addresses_pre_62'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wootax_origin_addresses_pre_62'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wootax_origin_addresses_pre_62'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wootax_origin_addresses_pre_62'"
