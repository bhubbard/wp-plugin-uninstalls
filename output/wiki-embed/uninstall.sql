-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wikiembed_options', 'wikiembeds', 'wiki_embed_white_list', 'wikiembed_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wiki_embed', 'wikiembed_expiration', 'wikiembed_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('wiki_embed', 'wikiembed_expiration', 'wikiembed_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('wiki_embed', 'wikiembed_expiration', 'wikiembed_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wiki_embed', 'wikiembed_expiration', 'wikiembed_content');

