#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%accessKey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%secretKey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%contractId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%customPostType'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activeLangs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enableMultilingual'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%customMenuCss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activeCollapse'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rozetta_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rozetta_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rozetta_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rozetta_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rozetta_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rozetta_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rozetta_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rozetta_original_post_id'"
