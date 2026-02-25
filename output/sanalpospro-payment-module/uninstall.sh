#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SPPRO_PUBLIC_KEY'
wp option delete 'SPPRO_SECRET_KEY'
wp option delete 'SPPRO_TOKEN'
wp option delete 'SPPRO_ORDER_STATUS'
wp option delete 'SPPRO_CURRENCY_CONVERT'
wp option delete 'SPPRO_SHOWINSTALLMENTSTABS'
wp option delete 'SPPRO_PAYMENTPAGETHEME'
wp option delete 'SPPRO_INSTALLMENTS'
wp option delete 'SANALPOSPRO_ACCESS_TOKEN'
wp option delete 'woocommerce_sanalpospro_settings'
wp option delete 'woocommerce_sppro_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_phone'
wp option delete 'options_phone'

# Delete Transients
wp transient delete 'sanalpospro_api_token'

# Clear Cron Jobs
wp cron event delete 'sanalpospro_daily_cleanup'

