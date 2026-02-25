#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a2_cache_enabled'
wp option delete 'A2_Optimized_Plugin_recaptcha'
wp option delete 'a2_block_xmlrpc'
wp option delete 'a2opt-pagespeed'
wp option delete 'a2opt-benchmarks-hosting'
wp option delete 'a2opt-benchmarks-frontend'
wp option delete 'a2_sitedata_allow'
wp option delete 'a2_optimized_memcached_server'
wp option delete 'a2opt-cache'
wp option delete 'autoptimize_html'
wp option delete 'a2_optimized_objectcache_type'
wp option delete 'a2_optimized_redis_server'
wp option delete 'litespeed.conf.object-kind'
wp option delete 'litespeed.conf.object-host'
wp option delete 'litespeed.conf.object-port'
wp option delete 'a2_optimized_memcached_invalid'
wp option delete 'a2_db_optimizations'
wp option delete 'sm_options'
wp option delete 'litespeed.conf.crawler-sitemap'
wp option delete 'a2_optimized_wpconfig_cleanup'
wp option delete 'a2_litespeed_lock'
wp option delete 'litespeed.conf.object'
wp option delete 'wpseh_l01gnhdlwp'
wp option delete 'a2_object_cache_enabled'
wp option delete 'a2_wc_cart_fragments'
wp option delete 'a2_updated_regenerate-salts'
wp option delete 'a2_optimized_deny_direct'
wp option delete 'a2_optimized_lockdown'
wp option delete 'a2_optimized_nomods'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'a2_last_benchmark_ver'
wp option delete 'a2_sitedata_lastsent'
wp option delete 'a2_opt_auth_token'
wp option delete 'litespeed.conf.cache'

# Clear Cron Jobs
wp cron event delete 'a2_execute_db_optimizations'
wp cron event delete 'a2_execute_wpconfig_cleanup'
wp cron event delete 'a2_sync_xmlsitemap_location'
wp cron event delete 'a2_sitedata_report'
wp cron event delete 'a2_sitedata_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clear_post_cache_on_update'"
