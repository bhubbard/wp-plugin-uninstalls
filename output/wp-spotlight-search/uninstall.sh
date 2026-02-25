#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_spotlight_setting'
wp option delete 'woocommerce_currency'
wp option delete 'wp_spotlight_admin_notice'
wp option delete 'wp_spotlight_update_notice'

# Delete Transients
wp transient delete '_wp_spotlight_setting_redirect_on_activation'

