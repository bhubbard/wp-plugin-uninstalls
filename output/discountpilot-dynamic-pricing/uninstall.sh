#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dspilot_options'

# Delete Transients
wp transient delete 'dspilot_shipping_zones'
wp transient delete 'dspilot_wc_countries'
wp transient delete 'dspilot_wc_states'
wp transient delete 'dspilot_wc_product_variations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_dspilot_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_dspilot_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_dspilot_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dspilot_errors_%'"
