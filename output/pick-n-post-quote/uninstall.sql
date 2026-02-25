-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pick_n_post_quote', 'pick_n_post_quote_author', 'pick_n_post_quote_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('pick_n_post_quote', 'pick_n_post_quote_author', 'pick_n_post_quote_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('pick_n_post_quote', 'pick_n_post_quote_author', 'pick_n_post_quote_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pick_n_post_quote', 'pick_n_post_quote_author', 'pick_n_post_quote_source');

