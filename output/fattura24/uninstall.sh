#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fatt-24-API-key'
wp option delete 'fatt-24-woo-rating'
wp option delete 'fatt-24-log-enable'
wp option delete 'fatt-24-toggle-billing-fields'
wp option delete 'fatt-24-inv-object'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fatt_24_payment_type_%'"
wp option delete 'fatt-24-ord-status-select'
wp option delete 'fatt-24-add-product-variation'
wp option delete 'fatt-24-inv-pdc-shipping'
wp option delete 'fatt-24-inv-pdc-fees'
wp option delete 'fatt-24-inv-create'
wp option delete 'fatt-24-plugin-version'
wp option delete 'fatt_24_assets_version'
wp option delete 'fatt-24-ord-enable-create'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'fatt-24-ord-zero-tot-enable'
wp option delete 'numerator_list_1'
wp option delete 'numerator_list_3'
wp option delete 'numerator_list_11'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'numerator_list_%'"
wp option delete 'pdc_list'
wp option delete 'template_list_order'
wp option delete 'template_list_invoice'
wp option delete 'fatt-24-add-vat-field'
wp option delete 'fatt-24-abk-fiscode-req'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'fatt-24-inv-zero-tot-enable'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'fatt-24-inv-pdc'
wp option delete 'fatt-24-bollo-virtuale-fe'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'fatt-24-inv-create-when-paid'
wp option delete 'active_sitewide_plugins'
wp option delete 'fatt-24-ord-enable-pdf-download'
wp option delete 'fatt-24-inv-enable-pdf-download'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_version'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_fiscalcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_fiscalcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_fiscalcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_fiscalcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vatcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vatcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vatcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vatcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_recipientcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_recipientcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_recipientcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_recipientcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_pecaddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_pecaddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_pecaddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_pecaddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdc'"
