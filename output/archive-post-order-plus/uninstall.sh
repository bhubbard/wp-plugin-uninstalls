#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_apop_normal_order'
wp option delete '_apop_normal_order_param'
wp option delete '_apop_search_order'
wp option delete '_apop_search_order_param'
wp option delete '_apop_custompost_archive_order_param'
wp option delete '_apop_tax_order_param'
wp option delete '_apop_custompost_archive_sort_type'
wp option delete '_apop_tax_sort_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order'"
wp option delete '_apop_per_page'
wp option delete '_apop_custompost_archive_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_param'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_apop_post_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_apop_post_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_apop_post_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_apop_post_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_apop_customposts_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_apop_customposts_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_apop_customposts_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_apop_customposts_%'"
