#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enviopack_branch_office'
wp option delete 'ecom_enviopack_options'
wp option delete 'enviopack_api_key'
wp option delete 'enviopack_api_secret'
wp option delete 'enviopack_packaging_mode'
wp option delete 'enviopack_shipping_mode'
wp option delete 'enviopack_shipping_status'
wp option delete 'enviopack_couriers'
wp option delete 'enviopack_address_id'
wp option delete 'enviopack_gmap_key'
wp option delete 'enviopack_status_on_processed'
wp option delete 'enviopack_debug'
wp option delete 'enviopack_access_token'
wp option delete 'woocommerce_weight_unit'

