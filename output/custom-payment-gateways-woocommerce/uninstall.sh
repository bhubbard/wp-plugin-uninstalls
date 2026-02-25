#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_custom_payment_gateways_version'
wp option delete 'alg_wc_custom_payment_gateways_enabled'
wp option delete 'alg_wc_cpg_input_fields_enabled'
wp option delete 'alg_wc_cpg_fees_enabled'
wp option delete 'alg_wc_cpg_fees_cart_total_taxes'
wp option delete 'alg_wc_cpg_fees_cart_total_shipping'
wp option delete 'alg_wc_cpg_fees_cart_total_discounts'
wp option delete 'woocommerce_default_gateway'
wp option delete 'alg_wc_cpg_input_fields_woe_enabled'
wp option delete 'alg_wc_cpg_input_fields_woe_template'
wp option delete 'alg_wc_cpg_input_fields_woe_glue'
wp option delete 'alg_wc_cpg_input_fields_add_to_emails'
wp option delete 'alg_wc_cpg_input_fields_add_to_emails_sent_to'
wp option delete 'alg_wc_cpg_input_fields_add_to_emails_template_plain'
wp option delete 'alg_wc_cpg_input_fields_add_to_emails_template'
wp option delete 'alg_wc_cpg_input_fields_add_to_order_details'
wp option delete 'alg_wc_cpg_input_fields_add_to_order_details_template'
wp option delete 'alg_wc_cpg_input_fields_add_order_note'
wp option delete 'img_cpg_orders'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_cpg_load_shipping_method_instances'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_custom_payment_gateways_admin_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cpg_input_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cpg_input_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cpg_input_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cpg_input_fields'"
