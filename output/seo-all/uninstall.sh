#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_all_baidu_push'
wp option delete 'seo_all_global'
wp option delete 'seo_all_other'
wp option delete 'seo_all_sitemap'
wp option delete 'seo_all_index'
wp option delete 'seo_all_robots'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Baidu_Push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Baidu_Push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Baidu_Push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Baidu_Push'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_seo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_seo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_seo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_seo_data'"
