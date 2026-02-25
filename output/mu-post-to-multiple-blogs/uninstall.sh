#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitewide_tags_blog'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multi_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multi_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multi_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multi_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_html'"
