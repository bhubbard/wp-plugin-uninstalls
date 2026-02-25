#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_cart_redirect_to_page'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woo_cart_redirect_default'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'gwp_com_live_feed'

