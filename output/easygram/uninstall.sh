#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eg_accesstoken'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'eg_general_options'
wp option delete 'eg_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instagram_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instagram_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instagram_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instagram_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_related_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_related_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_related_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_related_image'"
