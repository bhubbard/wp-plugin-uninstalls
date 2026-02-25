#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipper_settings'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

