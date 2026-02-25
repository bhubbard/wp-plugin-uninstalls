#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-mercadopago-plus-%'"
wp option delete 'woocommerce_wc_mp_plus_gateway_bricks_settings'
wp option delete 'wc-mpp_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-notices' OR option_name LIKE '_site_transient_%-notices'"

