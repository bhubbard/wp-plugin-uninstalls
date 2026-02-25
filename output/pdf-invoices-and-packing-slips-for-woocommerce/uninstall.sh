#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_invoice_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_packing_slip_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_label_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delivery_note_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dispatch_label_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_invoice_active_template_id'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'apifw_invoice_delete_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invoice_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invoice_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invoice_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invoice_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invoice_template_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invoice_template_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invoice_template_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invoice_template_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invnum_not_formatted_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invnum_not_formatted_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ord_invoice_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ord_invoice_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ord_invoice_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ord_invoice_no'"
