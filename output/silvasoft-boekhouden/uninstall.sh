#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silva_settings'
wp option delete 'silva_db_version'
wp option delete 'woocommerce_prices_include_tax'

# Clear Cron Jobs
wp cron event delete 'silvasoft_woo_cron'
wp cron event delete 'silvasoft_woo_cron_stock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'silva_send_creditnota'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'silva_send_creditnota'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'silva_send_creditnota'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'silva_send_creditnota'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'silva_send_sale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'silva_send_sale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'silva_send_sale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'silva_send_sale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'silva_cron_refund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'silva_cron_refund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'silva_cron_refund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'silva_cron_refund'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'silva_cron'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'silva_cron'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'silva_cron'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'silva_cron'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'silva_send_refund_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'silva_send_refund_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'silva_send_refund_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'silva_send_refund_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'VAT Number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'VAT Number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'VAT Number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'VAT Number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
