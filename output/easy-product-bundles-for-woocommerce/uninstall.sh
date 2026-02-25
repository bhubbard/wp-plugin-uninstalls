#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asnp_easy_product_bundle_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_added'"
wp option delete 'asnp_easy_product_bundle_review'
wp option delete 'asnp_wepb_db_version'
wp option delete 'woocommerce_calc_taxes'

# Delete Transients
wp transient delete 'asnp_wepb_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
