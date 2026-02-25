#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'ampforwp_themeframework_active_plugins'

