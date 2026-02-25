-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_blocks_for_discogs__settings', 'gf_clear_cache_notice');
DELETE FROM wp_options WHERE option_name LIKE '%__settings';
DELETE FROM wp_options WHERE option_name LIKE '%__api_rates';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('listing_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('listing_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('listing_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('listing_id');

