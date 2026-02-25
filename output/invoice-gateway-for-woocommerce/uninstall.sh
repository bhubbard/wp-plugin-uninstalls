#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'igfw_installed_by'
wp option delete 'wwp_installed_by'
wp option delete 'woocommerce_igfw_invoice_gateway_settings'
wp option delete 'igfw_enable_purchase_order_number'
wp option delete 'igfw_default_order_status'

