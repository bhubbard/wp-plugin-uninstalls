#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'packager_pricing_plans'
wp option delete 'packager_pricing_table_title'

# Delete Transients
wp transient delete 'packager_currency_list'

