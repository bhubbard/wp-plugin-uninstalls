#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'paywr_create_mobile_page'
wp option delete 'woocommerce_payware-mobile-payments-for-woocommerce_settings'

