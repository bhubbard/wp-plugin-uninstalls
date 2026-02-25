#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quantwp_sidecart_cross_sells_limit'
wp option delete 'quantwp_sidecart_cross_sells_enabled'
wp option delete 'quantwp_sidecart_auto_open'
wp option delete 'quantwp_sidecart_shipping_bar_enabled'
wp option delete 'quantwp_sidecart_shipping_threshold'
wp option delete 'quantwp_sidecart_icon'
wp option delete 'quantwp_sidecart_shipping_threshold_color'
wp option delete 'quantwp_sidecart_carousel_background_color'
wp option delete 'quantwp_sidecart_checkout_btn_bg'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_quantwp_cross_sells_%' OR option_name LIKE '_site_transient_quantwp_cross_sells_%'"
wp transient delete 'quantwp_shipping_threshold'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_quantwp_cart_fragment_%' OR option_name LIKE '_site_transient_quantwp_cart_fragment_%'"

