#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payos_settings'
wp option delete 'payos_gateway_settings'

