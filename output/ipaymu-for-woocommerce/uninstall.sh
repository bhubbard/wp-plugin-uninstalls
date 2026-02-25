#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ipaymu_settings'
wp option delete 'woocommerce_force_ssl_checkout'

