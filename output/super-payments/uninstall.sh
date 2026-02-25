#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_superpayments_settings'
wp option delete 'wcsp_product_ingestion_status'
wp option delete 'woocommerce_gateway_order'

