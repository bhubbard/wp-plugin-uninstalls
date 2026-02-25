#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_permalinks'

# Delete Transients
wp transient delete 'wpcd_active'

