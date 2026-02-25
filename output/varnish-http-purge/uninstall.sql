-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vhp_varnish_devmode', 'vhp_varnish_debug', 'vhp_varnish_use_tags', 'vhp_varnish_max_posts_before_all', 'vhp_varnish_ip', 'vhp_varnish_extra_purge_header_name', 'vhp_varnish_extra_purge_header_value', 'vhp_varnish_url', 'vhp_varnish_last_queue_run', 'vhp_cache_test_post_id', 'vhp_cache_test_marker', 'vhp_cache_test_new_marker', 'vhp_varnish_purge_queue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vhp_cache_test', 'vhp_dismissed_cacheability_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vhp_cache_test', 'vhp_dismissed_cacheability_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vhp_cache_test', 'vhp_dismissed_cacheability_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vhp_cache_test', 'vhp_dismissed_cacheability_notice');

