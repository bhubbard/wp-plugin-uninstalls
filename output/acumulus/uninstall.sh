#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acumulus'
wp option delete 'acumulus_version'
wp option delete 'woocommerce_shipping_tax_class'

