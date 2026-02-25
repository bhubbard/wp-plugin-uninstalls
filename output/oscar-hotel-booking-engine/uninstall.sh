#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ohbe_inventory'
wp option delete 'ohbe_inventory_accounts'
wp option delete 'ohbe_settings'
wp option delete 'ohbe'

# Delete Transients
wp transient delete 'ohbe_flush'

