#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moneroo_wc_webhook_secret'
wp option delete 'woocommerce_force_ssl_checkout'

