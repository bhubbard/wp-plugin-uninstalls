#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcuf_settings'
wp option delete 'wpcuf_uf'
wp option delete 'wpcuf_ob'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcuf_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

