#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keywords'"
