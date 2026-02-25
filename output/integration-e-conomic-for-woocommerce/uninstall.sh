#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'e_conomic_customer_%'"
wp option delete 'woocommerce_tax_based_on'
wp option delete 'e_conomic_default_payment_terms'
wp option delete 'woocommerce_default_country'
wp option delete 'e_conomic_default_customer_group_dk'
wp option delete 'e_conomic_default_customer_group_eu'
wp option delete 'e_conomic_default_customer_group_world'
wp option delete 'e_conomic_payment_terms'
wp option delete 'e_conomic_product_groups'
wp option delete 'e_conomic_customer_groups'
wp option delete 'e_conomic_layouts'
wp option delete 'e_conomic_units'
wp option delete 'e_conomic_order_layout'
wp option delete 'e_conomic_order_sync_settings'
wp option delete 'e_conomic_auto_generate_sku'
wp option delete 'e_conomic_sync_master_product'
wp option delete 'e_conomic_sync_existing_product'
wp option delete 'e_conomic_default_unit'
wp option delete 'e_conomic_fee_product_number'
wp option delete 'e_conomic_shipping_sku'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'e_conomic_shipping_%'"
wp option delete 'e_conomic_individual_product_group'
wp option delete 'e_conomic_default_product_group'
wp option delete 'e_conomic_skip_product_variations'
wp option delete 'e_conomic_do_not_sync_price'
wp option delete 'e_conomic_api_key'
wp option delete 'e_conomic_customer_settings_are_valid'
wp option delete 'e_conomic_product_settings_are_valid'
wp option delete 'e_conomic_order_general_settings_are_valid'
wp option delete 'e_conomic_order_sync_settings_are_valid'
wp option delete 'e_conomic_invoice_layout'
wp option delete 'e_conomic_sync_orders'
wp option delete 'e_conomic_order_number_prefix'
wp option delete 'e_conomic_needs_login'
wp option delete 'e_conomic_auto_sync_products'
wp option delete 'e_conomic_auto_sync_orders'
wp option delete 'e_conomic_agreement_grant_token'
wp option delete 'e_conomic_debug_log'
wp option delete 'e_conomic_credit_voucher_on_refund'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wetail_woocommerce_economic_wwo-updated-%' OR option_name LIKE '_site_transient_wetail_woocommerce_economic_wwo-updated-%'"

# Clear Cron Jobs
wp cron event delete 'wc_order_status_set_sync_cb_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ean_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ean_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ean_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ean_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cvr_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cvr_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cvr_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cvr_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_synced_to_e_conomic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_synced_to_e_conomic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_synced_to_e_conomic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_synced_to_e_conomic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integration-e-conomic-for-woocommerce_product_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integration-e-conomic-for-woocommerce_product_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integration-e-conomic-for-woocommerce_product_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integration-e-conomic-for-woocommerce_product_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
