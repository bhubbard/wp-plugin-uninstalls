#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'collabpay_api_key'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_collabpay_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_collabpay_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_collabpay_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_collabpay_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_collabpay_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_collabpay_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_collabpay_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_collabpay_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affwp_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affwp_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affwp_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affwp_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_ref'"
