#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrkv_nova_api_token'
wp option delete 'mrkv_nova_api_server'
wp option delete 'mrkv_nova_delivery'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

