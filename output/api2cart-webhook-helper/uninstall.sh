#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%updated_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%updated_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%updated_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%updated_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%created_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%created_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%created_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%created_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%id'"
