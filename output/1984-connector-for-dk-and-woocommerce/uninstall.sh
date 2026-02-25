#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '1984_woo_dk_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_payment_method_%'"
wp option delete '1984_woo_dk_shipping_sku'
wp option delete '1984_woo_dk_cost_sku'
wp option delete '1984_woo_dk_default_kennitala'
wp option delete '1984_woo_dk_kennitala_classic_field_enabled'
wp option delete '1984_woo_dk_kennitala_block_field_enabled'
wp option delete '1984_woo_dk_default_sales_person_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_ledger_code_%'"
wp option delete '1984_woo_dk_product_price_sync'
wp option delete '1984_woo_dk_product_quantity_sync'
wp option delete '1984_woo_dk_product_name_sync'
wp option delete '1984_woo_dk_email_invoice'
wp option delete '1984_woo_dk_customer_requests_kennitala_invoice'
wp option delete '1984_woo_dk_make_invoice_if_kennitala_is_set'
wp option delete '1984_woo_dk_make_invoice_if_kennitala_is_missing'
wp option delete '1984_woo_dk_dk_currency'
wp option delete '1984_woo_dk_import_nonweb_products'
wp option delete '1984_woo_dk_delete_inactive_products'
wp option delete '1984_woo_dk_domestic_customer_ledger_code'
wp option delete '1984_woo_dk_international_customer_ledger_code'
wp option delete '1984_woo_dk_use_attribute_description'
wp option delete '1984_woo_dk_use_attribute_value_description'
wp option delete '1984_woo_dk_product_convertion_to_variation_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '1984_woo_dk_currency_rate_%'"
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete '1984_woo_dk_variations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_1984_woo_dk_attribute_%' OR option_name LIKE '_site_transient_1984_woo_dk_attribute_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_1984_woo_dk_variation_attributes_%' OR option_name LIKE '_site_transient_1984_woo_dk_variation_attributes_%'"
wp transient delete '1984_woo_dk_attribute_values'
wp transient delete '1984_woo_dk_payment_terms'
wp transient delete '1984_woo_dk_payment_modes'
wp transient delete '1984_woo_dk_payment_methods'
wp transient delete '1984_woo_dk_warehouses'

# Clear Cron Jobs
wp cron event delete '1984_dk_woo_hourly'
wp cron event delete '1984_dk_woo_every_minute'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_kennitala'"
