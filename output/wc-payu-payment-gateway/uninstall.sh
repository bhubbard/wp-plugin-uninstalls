#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'imma_wm_ads_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htransaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imma_wm_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payu_reference_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payu_reference_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payu_reference_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payu_reference_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payu_method_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payu_method_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payu_method_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payu_method_type'"
