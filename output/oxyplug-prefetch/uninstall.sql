-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oxy_prefetch_version', 'oxy_prefetches_number_status', 'oxy_prefetches_number', 'oxy_prefetch_hover_status', 'oxy_prefetch_prerender_number_status', 'oxy_prefetch_prerender_number', 'oxy_prefetch_prerender_hover_status', 'oxy_prefetch_prerender_href_exclusion_status', 'oxy_prefetch_prerender_match', 'oxy_prefetch_prerender_notice_dismissed', 'oxy_prefetch_errors', 'oxy_prefetch_success_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oxy_prefetch_status', '_oxy_prefetch_url', '_oxy_prefetch_prerender_status', '_oxy_prefetch_prerender_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oxy_prefetch_status', '_oxy_prefetch_url', '_oxy_prefetch_prerender_status', '_oxy_prefetch_prerender_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oxy_prefetch_status', '_oxy_prefetch_url', '_oxy_prefetch_prerender_status', '_oxy_prefetch_prerender_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oxy_prefetch_status', '_oxy_prefetch_url', '_oxy_prefetch_prerender_status', '_oxy_prefetch_prerender_url');

