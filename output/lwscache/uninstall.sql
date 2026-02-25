-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_wp_lws_cache_options', 'rt_wp_lws_cache_init_check', 'lws_cache_poweredcache_addons', 'lws_cache_wprocket_addons', 'lwscache_do_not_ask_again', 'lwscache_excluded_urls', 'lwscache_remind_me');

