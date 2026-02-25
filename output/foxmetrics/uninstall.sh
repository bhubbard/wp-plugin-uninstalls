#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foxmetrics_analytics_settings'
wp option delete 'woocommerce_tax_display_cart'

