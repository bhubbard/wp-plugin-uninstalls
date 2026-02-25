#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GBBVA_PUBLIC_KEY'
wp option delete 'GBBVA_SECRET_KEY'
wp option delete 'GBBVA_TOKEN'
wp option delete 'GBBVA_ORDER_STATUS'
wp option delete 'GBBVA_CURRENCY_CONVERT'
wp option delete 'GBBVA_SHOWINSTALLMENTSTABS'
wp option delete 'GBBVA_PAYMENTPAGETHEME'
wp option delete 'GBBVA_INSTALLMENTS'
wp option delete 'woocommerce_garantibbva_settings'
wp option delete 'woocommerce_gbbva_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_phone'
wp option delete 'options_phone'

# Delete Transients
wp transient delete 'garantibbva_api_token'

# Clear Cron Jobs
wp cron event delete 'garantibbva_daily_cleanup'

