#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_accounting_colorder'
wp option delete 'woocommerce_accounting_refunds_export_start_date'
wp option delete 'woocommerce_accounting_refunds_export_end_date'
wp option delete 'woocommerce_accounting_export_refunds_date_format'
wp option delete 'woocommerce_accounting_refunds_export_separator'
wp option delete 'woocommerce_accounting_refunds_export_date_opt'
wp option delete 'woocommerce_accounting_refunds_export_pay_opt'
wp option delete 'woocommerce_accounting_refunds_export_prod_opt'
wp option delete 'woocommerce_accounting_refunds_export_taxes_opt'
wp option delete 'woocommerce_accounting_refunds_export_ship_opt'
wp option delete 'woocommerce_accounting_refunds_export_factnum_opt'
wp option delete 'woocommerce_accounting_refunds_export_cust_opt'
wp option delete 'woocommerce_accounting_refunds_export_decimal_separator'
wp option delete 'woocommerce_accounting_refunds_export_zero_opt'
wp option delete 'woocommerce_accounting_book_code_order'
wp option delete 'woocommerce_accounting_generic_cust_accounting_account'
wp option delete 'woocommerce_accounting_generic_prod_accounting_account'
wp option delete 'woocommerce_accounting_generic_fdp_accounting_account'
wp option delete 'woocommerce_accounting_generic_tax_accounting_account'
wp option delete 'woocommerce_accounting_generic_prod_analytic_account'
wp option delete 'woocommerce_accounting_generic_fdp_analytic_account'
wp option delete 'woocommerce_accounting_lib_prefix'
wp option delete 'wpo_wcpdf_pro_settings'
wp option delete 'woocommerce_accounting_gateways_libs'
wp option delete 'woocommerce_accounting_tax_rates_accounting_account'
wp option delete 'woocommerce_accounting_shipping_methods_accounting_account'
wp option delete 'woocommerce_accounting_shipping_methods_analytic_account'
wp option delete 'woocommerce_accounting_generic_exptcred_accounting_account'
wp option delete 'woocommerce_accounting_generic_exptchar_accounting_account'
wp option delete 'woocommerce_accounting_countries_acc'
wp option delete 'woocommerce_accounting_export_start_date'
wp option delete 'woocommerce_accounting_export_end_date'
wp option delete 'woocommerce_accounting_export_date_format'
wp option delete 'woocommerce_accounting_export_separator'
wp option delete 'woocommerce_accounting_export_date_opt'
wp option delete 'woocommerce_accounting_export_pay_opt'
wp option delete 'woocommerce_accounting_export_prod_opt'
wp option delete 'woocommerce_accounting_export_taxes_opt'
wp option delete 'woocommerce_accounting_export_ship_opt'
wp option delete 'woocommerce_accounting_export_factnum_opt'
wp option delete 'woocommerce_accounting_export_cust_opt'
wp option delete 'woocommerce_accounting_export_decimal_separator'
wp option delete 'woocommerce_accounting_export_zero_opt'
wp option delete 'woocommerce_accounting_export_coupon_col'
wp option delete 'woocommerce_accounting_export_coupon_opt'
wp option delete 'woocommerce_accounting_export_rounding_precision'
wp option delete 'woocommerce_accounting_status'
wp option delete 'woocommerce_accounting_columns_headers'
wp option delete 'woocommerce_accounting_status_code'
wp option delete 'woocommerce_accounting_status_account'
wp option delete 'woocommerce_accounting_generic_discount_accounting_account'
wp option delete 'woocommerce_accounting_generic_discount_analytic_account'
wp option delete 'woocommerce_accounting_generic_discount_product_sku'
wp option delete 'wpo_wcpdf_template_settings'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpdf_credit_note_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpdf_credit_note_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpdf_credit_note_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpdf_credit_note_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpdf_credit_note_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpdf_credit_note_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpdf_credit_note_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpdf_credit_note_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_accounting_user_accountingcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_accounting_user_accountingcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_accounting_user_accountingcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_accounting_user_accountingcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_accounting_product_accounting_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_analytic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_accounting_product_accounting_analytic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_analytic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_accounting_product_accounting_analytic'"
