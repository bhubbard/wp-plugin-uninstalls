#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooaa_settings'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wooaa_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

