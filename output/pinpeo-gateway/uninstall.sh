#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mtg_gateway_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pinpeo_gateway_public_key_%' OR option_name LIKE '_site_transient_pinpeo_gateway_public_key_%'"

