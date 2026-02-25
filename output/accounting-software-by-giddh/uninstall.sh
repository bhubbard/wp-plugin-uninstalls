#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giddh_version'
wp option delete 'giddh_notification_email'
wp option delete 'giddh_company_unique_name'
wp option delete 'giddh_shop_unique_name'
wp option delete 'giddh_company_auth_key'
wp option delete 'giddh_save_woocommerce_categories'
wp option delete 'giddh_save_woocommerce_products'
wp option delete 'giddh_save_giddh_products'
wp option delete 'giddh_save_woocommerce_payment_gateways'
wp option delete 'giddh_create_woocommerce_unmatched_to_giddh'
wp option delete 'giddh_create_giddh_unmatched_to_woocommerce'
wp option delete 'giddh_email_method'
wp option delete 'giddh_create_customer_account'
wp option delete 'giddh_create_invoice'
wp option delete 'giddh_sendgrid_api_key'
wp option delete 'woocommerce_currency'
wp option delete 'giddh_shipping_account'
wp option delete 'giddh_shipping_account_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sku'"
