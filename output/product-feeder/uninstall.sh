#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product-feeder-product-statuses'
wp option delete 'product-feeder-default-order-status'
wp option delete 'product-feeder-accepted-order-statuses'
wp option delete 'product-feeder-rejected-order-statuses'
wp option delete 'product-feeder-shipped-order-statuses'
wp option delete 'product_feeder_api_key'
wp option delete 'product-feeder-sizes'
wp option delete 'product-feeder-brand'
wp option delete 'product-feeder-ean'
wp option delete 'product-feeder-color'
wp option delete 'product-feeder-season'
wp option delete 'product-feeder-gender'
wp option delete 'product-feeder-material'
wp option delete 'product-feeder-condition'
wp option delete 'product-feeder-delivery-terms'

