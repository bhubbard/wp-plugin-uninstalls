#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_webdebit_payment_settings'
wp option delete 'active_sitewide_plugins'

