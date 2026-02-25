#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dn_shipping_by_weight-tables'
wp option delete 'dn_shipping_by_weight-last_id'
wp option delete 'woocommerce_weight_unit'

