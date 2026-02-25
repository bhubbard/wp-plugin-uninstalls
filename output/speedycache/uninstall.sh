#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedycache_deletion_roles'
wp option delete 'softaculous_plugin_update_notice'
wp option delete 'speedycache_options'
wp option delete 'speedycache_object_cache'
wp option delete 'speedycache_cdn'
wp option delete 'speedycache_bloat'
wp option delete 'speedycache_pagespeed_test'
wp option delete 'speedycache_exclude'
wp option delete 'speedycache_img'
wp option delete 'speedycache_html_size'
wp option delete 'speedycache_assets_size'
wp option delete 'speedycache_version'
wp option delete 'speedycache_delete_cache_logs'
wp option delete 'speedycache_ccss_logs'
wp option delete 'speedycache_license'
wp option delete 'speedycache_pro_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'speedycache_preload_transient'

# Clear Cron Jobs
wp cron event delete 'speedycache_purge_cache'
wp cron event delete 'speedycache_preload'
wp cron event delete 'speedycache_preload_split'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speedycache_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speedycache_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speedycache_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speedycache_post_meta'"
