#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpfaqsu_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpfaqsu_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpfaqsu_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpfaqsu_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prefix_post_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prefix_post_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prefix_post_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prefix_post_options'"
