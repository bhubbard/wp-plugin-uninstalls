-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_bokun_access_key', 'embed_bokun_secret_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_embed_bokun_product_api_response', '_embed_bokun_bokun_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_embed_bokun_product_api_response', '_embed_bokun_bokun_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_embed_bokun_product_api_response', '_embed_bokun_bokun_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_embed_bokun_product_api_response', '_embed_bokun_bokun_id');

