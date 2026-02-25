-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wprs_post_snippets_types', '_wprs_post_review_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wprs_post_snippets_types', '_wprs_post_review_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wprs_post_snippets_types', '_wprs_post_review_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wprs_post_snippets_types', '_wprs_post_review_type');

