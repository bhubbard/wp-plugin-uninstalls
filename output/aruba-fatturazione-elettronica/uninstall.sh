#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_logs_logging_enabled'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'wc_tax_rates_backup'
wp option delete 'aruba_fe_wc_tax_rates_classes_backup'
wp option delete 'aruba_fe_wc_tax_rates_backup'
wp option delete 'wc_tax_rates_classes_backup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_customer_type_aruba_fe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_customer_type_aruba_fe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_customer_type_aruba_fe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_customer_type_aruba_fe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_need_invoice_aruba_fe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_need_invoice_aruba_fe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_need_invoice_aruba_fe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_need_invoice_aruba_fe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_drafts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_drafts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_drafts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_drafts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aruba_fe_has_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aruba_fe_has_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aruba_fe_has_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aruba_fe_has_error'"
