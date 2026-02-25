#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_billink_settings'
wp option delete 'woocommerce_billink_gateway_description_version'
wp option delete 'woocommerce_tax_based_on'

