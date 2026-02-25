#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cod24_meta_data_migrated'
wp option delete 'cod24_shipping_api_secure_connection_enabled'
wp option delete 'cod24_shipping_username_panel'
wp option delete 'cod24__shipping_password_panel'
wp option delete 'cod24_shipping_token'
wp option delete 'woocommerce_weight_unit'
wp option delete 'cod24_shipping_shcod_enabled'
wp option delete 'cod24_shipping_disable_shcod_price'
wp option delete 'cod24_shipping_shcod_type'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'cod24_shipping_free_shipping_cod_enabled'
wp option delete 'woocommerce_dokan_product_shipping_settings'

# Clear Cron Jobs
wp cron event delete 'migrate_cod24_meta_data_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cod24_serial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cod24_serial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cod24_serial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cod24_serial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cod24_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cod24_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cod24_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cod24_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_shipping_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_shipping_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_shipping_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_shipping_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_secure_connection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_secure_connection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_secure_connection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_secure_connection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_enabled_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_enabled_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_enabled_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_enabled_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_pishtaz_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_pishtaz_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_pishtaz_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_pishtaz_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_pishtaz_fallback_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_pishtaz_fallback_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_pishtaz_fallback_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_pishtaz_fallback_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_special_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_special_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_special_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_special_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_special_fallback_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_special_fallback_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_special_fallback_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_special_fallback_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_tipax_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_tipax_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_tipax_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_tipax_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_cod24_tipax_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_cod24_tipax_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_cod24_tipax_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_cod24_tipax_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
