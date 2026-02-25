#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'BW_NOTICE_%'"
wp option delete 'BW_NOTICES'
wp option delete 'BW_PAIRING_UPDATE'
wp option delete 'BW_ORDER_SHIPPED'
wp option delete 'BW_ORDER_DELIVERED'
wp option delete 'BW_LOGGING'
wp option delete 'BW_ACCESS_KEY'
wp option delete 'BW_SECRET_KEY'
wp option delete 'BW_MAP_TOKEN_URL'
wp option delete 'BW_HELP_CENTER_URL'
wp option delete 'BW_MAP_SETUP_URL'
wp option delete 'BW_NETWORKS_URL'
wp option delete 'BW_MAP_LOGO_HREF_URL'
wp option delete 'BW_MAP_LOGO_IMAGE_URL'
wp option delete 'BW_PP_NETWORKS'
wp option delete 'BW_MAP_BOOTSTRAP_URL'
wp option delete 'woocommerce_checkout_page_id'

