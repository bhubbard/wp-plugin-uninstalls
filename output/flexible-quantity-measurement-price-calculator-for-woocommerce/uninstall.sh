#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdesk_helper_options'
wp option delete 'woocommerce_enable_weight'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'quick_view_trigger'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_area_unit'
wp option delete 'woocommerce_volume_unit'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_trim_zeros'

# Delete Transients
wp transient delete 'sv_wc_plugin_wc_versions'

