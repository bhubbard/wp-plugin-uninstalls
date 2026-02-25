#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'payday_payment_method_%'"
wp option delete 'payday_invoice_date_option'
wp option delete 'payday_send_email_on_invoice_create'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_create_invoice_on_action'"
wp option delete 'payday_client_id'
wp option delete 'payday_client_secret'
wp option delete 'payday_api_endpoint'

# Delete Transients
wp transient delete 'payday_upsert_products_response'
wp transient delete 'payday_login_unsucessful_admin_notice'
wp transient delete 'payday_login_invalid_credentials_admin_notice'

