#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'op-plugin'

# Delete Transients
wp transient delete 'order_pop_cached_orders'

