#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'md_shipment_outside_ue'
wp option delete 'md_packaging_weight'
wp option delete 'md_calculate_shipping_before_coupon'
wp option delete 'md_api_key'
wp option delete 'md_log'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'md_label_error_%'"
wp option delete 'md_contracts_edition'
wp option delete 'md_company_name'
wp option delete 'md_complete_name'
wp option delete 'md_address'
wp option delete 'md_address_2'
wp option delete 'md_postal_box'
wp option delete 'md_zip_code'
wp option delete 'md_city'
wp option delete 'md_phone'
wp option delete 'md_shipment_type'
wp option delete 'md_default_hscode'
wp option delete 'md_default_country'
wp option delete 'md_default_fee'
wp option delete 'woocommerce_store_address_2'
wp option delete 'md_vat_number'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'md_uk_eori'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
