#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecommerce_dashboard_options'

# Delete Transients
wp transient delete 'ecommerce_dashboard_stats'

