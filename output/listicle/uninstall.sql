-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('listicle_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('listicle_tease', 'listicle_name', 'listicle_order', 'listicle_parentID', 'listicle_excerpt', 'listicle_exceprt');
DELETE FROM wp_usermeta WHERE meta_key IN ('listicle_tease', 'listicle_name', 'listicle_order', 'listicle_parentID', 'listicle_excerpt', 'listicle_exceprt');
DELETE FROM wp_termmeta WHERE meta_key IN ('listicle_tease', 'listicle_name', 'listicle_order', 'listicle_parentID', 'listicle_excerpt', 'listicle_exceprt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('listicle_tease', 'listicle_name', 'listicle_order', 'listicle_parentID', 'listicle_excerpt', 'listicle_exceprt');

