#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sio_api_link'
wp option delete 'sio_shop_uuid'
wp option delete 'sio_api_token'
wp option delete 'sio_api_price'
wp option delete 'sio_shop_einheit'
wp option delete 'sio_api_salebutton'
wp option delete 'sio_api_prgroup'
wp option delete 'sio_products'
wp option delete 'sio_product_uuid'

