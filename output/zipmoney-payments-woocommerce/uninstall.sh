#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zipmoney_settings'
wp option delete 'woocommerce_currency'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_force_ssl_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'au-%'"

