-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdp_wiki_embed_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rdp-ppe-cache-key', '_wiki_book_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rdp-ppe-cache-key', '_wiki_book_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rdp-ppe-cache-key', '_wiki_book_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rdp-ppe-cache-key', '_wiki_book_metadata');

