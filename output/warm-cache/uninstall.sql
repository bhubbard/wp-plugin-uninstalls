-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_warm_cache_lb_flush', 'plugin_warm_cache_api', 'plugin_warm_cache_start', 'plugin_warm_cache_sitemap_override', 'sm_options', 'plugin_warm_cache_limit', 'plugin_warm_cache_statdata');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mytime', 'mypages', 'totalpages');
DELETE FROM wp_usermeta WHERE meta_key IN ('mytime', 'mypages', 'totalpages');
DELETE FROM wp_termmeta WHERE meta_key IN ('mytime', 'mypages', 'totalpages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mytime', 'mypages', 'totalpages');

