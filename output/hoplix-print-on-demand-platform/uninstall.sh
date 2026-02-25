#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hoplix_settings'

# Delete Transients
wp transient delete 'hoplix_stats'
wp transient delete 'hoplix_orders'

