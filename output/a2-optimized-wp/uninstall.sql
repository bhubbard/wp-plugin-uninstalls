-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a2_cache_enabled', 'A2_Optimized_Plugin_recaptcha', 'a2_block_xmlrpc', 'a2opt-pagespeed', 'a2opt-benchmarks-hosting', 'a2opt-benchmarks-frontend', 'a2_sitedata_allow', 'a2_optimized_memcached_server', 'a2opt-cache', 'autoptimize_html', 'a2_optimized_objectcache_type', 'a2_optimized_redis_server', 'litespeed.conf.object-kind', 'litespeed.conf.object-host', 'litespeed.conf.object-port', 'a2_optimized_memcached_invalid', 'a2_db_optimizations', 'sm_options', 'litespeed.conf.crawler-sitemap', 'a2_optimized_wpconfig_cleanup', 'a2_litespeed_lock', 'litespeed.conf.object', 'wpseh_l01gnhdlwp', 'a2_object_cache_enabled', 'a2_wc_cart_fragments', 'a2_updated_regenerate-salts', 'a2_optimized_deny_direct', 'a2_optimized_lockdown', 'a2_optimized_nomods', 'woocommerce_cart_redirect_after_add', 'a2_last_benchmark_ver', 'a2_sitedata_lastsent', 'a2_opt_auth_token', 'litespeed.conf.cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clear_post_cache_on_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clear_post_cache_on_update');

