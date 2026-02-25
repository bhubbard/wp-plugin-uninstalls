#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npt_post_type_count'
wp option delete 'npt_taxonomy_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npt_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npt_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npt_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npt_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npt_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npt_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npt_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npt_taxonomy'"
