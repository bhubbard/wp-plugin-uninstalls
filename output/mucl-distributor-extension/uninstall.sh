#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dt_original_blog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dt_original_blog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dt_original_blog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dt_original_blog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dt_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dt_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dt_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dt_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dt_connection_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dt_connection_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dt_connection_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dt_connection_map'"
