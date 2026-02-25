#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'wpils_key_validation_result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ils_tracking_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ils_tracking_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ils_tracking_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ils_tracking_details'"
