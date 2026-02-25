#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dn_shipping_by_price-tables'
wp option delete 'dn_shipping_by_price-last_id'

