-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nivo_search_default_preset_created', 'nivo_search_enable_ajax', 'nivo_search_excluded_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nivo_search_generale', '_nivo_search_display', '_nivo_search_style', '_nivo_search_query', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nivo_search_generale', '_nivo_search_display', '_nivo_search_style', '_nivo_search_query', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nivo_search_generale', '_nivo_search_display', '_nivo_search_style', '_nivo_search_query', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nivo_search_generale', '_nivo_search_display', '_nivo_search_style', '_nivo_search_query', '_sku');

