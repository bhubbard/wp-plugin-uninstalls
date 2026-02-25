#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dropp_is_settings'
wp option delete 'woocommerce_dropp_shipping_db_version'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'dropp_for_woocommerce_admin_notices'

# Delete Transients
wp transient delete 'dropp_pickup_enabled'
wp transient delete 'dropp_for_woocommerce_price_info'
wp transient delete 'dropp_delivery_postcodes'

# Clear Cron Jobs
wp cron event delete 'dropp_schedule_add_new'

