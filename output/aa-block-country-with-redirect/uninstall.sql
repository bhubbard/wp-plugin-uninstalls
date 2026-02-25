-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aa_block_fallback_country', 'aa_block_use_ip_api', 'aa_block_redirect_url', 'aa_block_enabled', 'aa_block_countries');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aa_block_enable', '_aa_block_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aa_block_enable', '_aa_block_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aa_block_enable', '_aa_block_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aa_block_enable', '_aa_block_countries');

