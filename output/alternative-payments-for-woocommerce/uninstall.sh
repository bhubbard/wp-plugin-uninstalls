#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_alternative_settings'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_alternative_payment_options'

