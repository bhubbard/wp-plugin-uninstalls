#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ysmap_excluded_post_ids'
wp option delete 'ysmap_excluded_taxonomies'
wp option delete 'ysmap_default_sort'
wp option delete 'ysmap_default_order'
wp option delete 'ysmap_per_page'
wp option delete 'ysmap_enable_taxonomy'

# Delete Transients
wp transient delete 'ysmap_cached_url_count'
wp transient delete 'ysmap_notice_basic_blocked_by_pro'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ysmap_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ysmap_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ysmap_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ysmap_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ysmap_exclude_from_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ysmap_exclude_from_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ysmap_exclude_from_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ysmap_exclude_from_sitemap'"
