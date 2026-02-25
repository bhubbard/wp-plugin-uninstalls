#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_warm_cache_lb_flush'
wp option delete 'plugin_warm_cache_api'
wp option delete 'plugin_warm_cache_start'
wp option delete 'plugin_warm_cache_sitemap_override'
wp option delete 'sm_options'
wp option delete 'plugin_warm_cache_limit'
wp option delete 'plugin_warm_cache_statdata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mytime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mytime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mytime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mytime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mypages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mypages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mypages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mypages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totalpages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totalpages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totalpages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totalpages'"
