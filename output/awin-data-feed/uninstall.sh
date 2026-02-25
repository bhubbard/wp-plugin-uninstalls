#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sw_deliveryMethod'
wp option delete 'sw_categories'
wp option delete 'sw_maxPriceRadio'
wp option delete 'sw_minPrice'
wp option delete 'sw_maxPrice'

