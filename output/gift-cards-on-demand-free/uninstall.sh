#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pl_wcpt_api_purchase_limit'
wp option delete 'pl_wcpt_api_username'
wp option delete 'pl_wcpt_api_code_release'
wp option delete 'pl_wcpt_transaction_last'
wp option delete 'pl_wcpt_api_account_currency'
wp option delete 'pl_wcpt_api_password'
wp option delete 'pl_api_purchase_limit'
wp option delete 'pl_api_username'
wp option delete 'pl_wcpt_api_last_currency'
wp option delete 'pl_api_last_currency'
wp option delete 'pl_api_password'
wp option delete 'pl_wcpt_api_public_key'
wp option delete 'pl_api_public_key'
wp option delete 'pl_wcpt_api_private_key'
wp option delete 'pl_api_private_key'
wp option delete 'pl_wcpt_api_environment'
wp option delete 'pl_api_environment'
wp option delete 'pl_wcpt_api_currency_conversion_value'
wp option delete 'pl_api_currency_conversion_value'
wp option delete 'pl_api_code_release'
wp option delete 'pl_wcpt_api_code_release_regular_email'
wp option delete 'pl_api_code_release_regular_email'
wp option delete 'pl_wcpt_api_currency_conversion'
wp option delete 'pl_api_currency_conversion'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'pl_wcpt_api_import_markup_val'
wp option delete 'pl_wcpt_force_transaction_last'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'pl_wcpt_api_code_purchase'
wp option delete 'pl_wcpt_api_openexchangerates'
wp option delete 'pl_wcpt_api_per_product_limit'
wp option delete 'pl_wcpt_api_code_release_method_limit'
wp option delete 'pl_wcpt_api_code_release_csv_email'
wp option delete 'pl_wcpt_api_low_wallet_email'
wp option delete 'pl_wcpt_api_price_mismatch_email'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_enabled'
wp option delete 'pl_wcpt_paythem_db_version'
wp option delete 'pl_wcpt_store_last_currency'

# Delete Transients
wp transient delete 'pl_wcpt_seller_wallet'

# Clear Cron Jobs
wp cron event delete 'pl_get_order_on_demand_stock'
wp cron event delete 'pl_purchase_product_after_order'
wp cron event delete 'pl_sync_products'
wp cron event delete 'pl_sync_transactions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_stock_management'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_stock_management'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_stock_management'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_stock_management'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_stock_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_stock_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_stock_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_stock_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pl_pt_on_demand_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pl_pt_on_demand_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pl_pt_on_demand_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pl_pt_on_demand_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pl_pt_base_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pl_pt_base_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pl_pt_base_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pl_pt_base_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_autoselling_price_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_autoselling_price_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_autoselling_price_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_autoselling_price_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_sell_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_sell_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_sell_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_sell_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_product_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_product_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_product_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_product_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_product_reserved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_product_reserved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_product_reserved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_product_reserved'"
