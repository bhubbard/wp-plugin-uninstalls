#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'safo_crm_logging'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'safo_crm_api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safocrm_wc_gpf_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safocrm_wc_gpf_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safocrm_wc_gpf_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safocrm_wc_gpf_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_safo_api_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_safo_api_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_safo_api_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_safo_api_id'"
