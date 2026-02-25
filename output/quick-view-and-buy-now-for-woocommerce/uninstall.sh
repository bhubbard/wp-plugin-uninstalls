#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-activation-notice' OR option_name LIKE '_site_transient_%-activation-notice'"

