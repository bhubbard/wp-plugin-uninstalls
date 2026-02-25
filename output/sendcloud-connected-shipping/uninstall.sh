#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'SCCSP_SENDCLOUD_SCHEMA_VERSION'

# Delete Transients
wp transient delete 'service_point_carriers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productUpdateHash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productUpdateHash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productUpdateHash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productUpdateHash'"
