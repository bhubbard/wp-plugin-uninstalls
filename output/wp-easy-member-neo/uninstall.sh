#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_wpemp_ver'
wp option delete 'wpemp_show_powered'
wp option delete 'wp_wpemp_fopen'
wp option delete 'wpemp_url'
wp option delete 'wpemp_name'
wp option delete 'wpemp_powered_link'
wp option delete 'wpemp_signup_link'
wp option delete 'wpemp_show_post'
wp option delete 'wpemp_show_page'
wp option delete 'wpemp_member_levels'
wp option delete 'wpemp_cat_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpemp_cat_levels_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpemp_show_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cat_levels_key_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpemp_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpemp_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpemp_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpemp_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpemp_dropdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpemp_dropdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpemp_dropdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpemp_dropdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpemp_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpemp_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpemp_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpemp_excerpt'"
