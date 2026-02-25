#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'style_shfpt'
wp option delete 'home_shfpt'
wp option delete 'frontpage_shfpt'
wp option delete 'archive_shfpt'
wp option delete 'category_shfpt'
wp option delete 'post_shfpt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slug_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slug_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slug_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slug_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_position_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_position_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_position_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_position_value_key'"
