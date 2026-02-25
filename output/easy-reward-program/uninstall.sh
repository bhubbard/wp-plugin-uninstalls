#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_terms_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erpup_with_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erpup_with_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erpup_with_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erpup_with_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_created_by_erpup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_created_by_erpup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_created_by_erpup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_created_by_erpup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erpup_cagnotte_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erpup_cagnotte_amount'"
