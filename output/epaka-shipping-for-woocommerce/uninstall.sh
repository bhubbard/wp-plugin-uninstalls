#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_fields'
wp option delete 'woocommerce_checkout_field_editor_fields'
wp option delete 'woocommerce_meta_box_order'
wp option delete 'woocommerce_shop_order_columns'
wp option delete 'epakshfo_plugin_version'

# Delete Transients
wp transient delete 'wc_admin_active_fields'
wp transient delete 'wc_admin_meta_boxes'
wp transient delete 'wc_order_export_columns'
wp transient delete 'wc_checkout_fields'
wp transient delete 'epakshfo_deactivation_notice'
wp transient delete 'wc_shipping_method_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shipping_method_count_%' OR option_name LIKE '_site_transient_shipping_method_count_%'"
wp transient delete 'epakshfo_flash_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_house_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_house_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_house_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_house_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_house_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_house_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_house_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_house_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_block_order_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_block_order_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_block_order_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_block_order_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processed_by_epakshfo_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processed_by_epakshfo_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processed_by_epakshfo_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processed_by_epakshfo_plugin'"
