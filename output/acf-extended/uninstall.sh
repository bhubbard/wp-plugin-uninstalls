#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acfe_dynamic_block_types'
wp option delete 'acfe_dynamic_options_pages'
wp option delete 'acfe_dynamic_post_types'
wp option delete 'acfe_dynamic_taxonomies'
wp option delete 'acfe'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf'"
