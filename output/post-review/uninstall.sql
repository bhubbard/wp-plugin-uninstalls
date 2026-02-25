-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('what_posts', 'what_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_review_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_review_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_review_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_review_rating');

