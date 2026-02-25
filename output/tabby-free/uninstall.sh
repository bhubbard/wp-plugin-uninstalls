#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agwp_tabby_settings_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agwp_tabby_post_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agwp_tabby_post_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agwp_tabby_post_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agwp_tabby_post_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_agm_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_agm_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_agm_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_agm_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agwp_tabby_options_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agwp_tabby_options_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agwp_tabby_options_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agwp_tabby_options_settings'"
