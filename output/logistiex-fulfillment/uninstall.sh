#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_store_admin_user_id'

# Clear Cron Jobs
wp cron event delete 'logistiex_fulfillment_send_debounced_order_to_webhook'

