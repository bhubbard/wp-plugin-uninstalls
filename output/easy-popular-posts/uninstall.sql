-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'easy-popular-posts-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easy-popular-posts-pageviews', '_easy-popular-posts-twitter', '_easy-popular-posts-facebook', '_easy-popular-posts-linkedin', '_easy-popular-posts-stumbleupon', '_easy-popular-posts-social', '_easy-popular-posts-comments');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easy-popular-posts-pageviews', '_easy-popular-posts-twitter', '_easy-popular-posts-facebook', '_easy-popular-posts-linkedin', '_easy-popular-posts-stumbleupon', '_easy-popular-posts-social', '_easy-popular-posts-comments');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easy-popular-posts-pageviews', '_easy-popular-posts-twitter', '_easy-popular-posts-facebook', '_easy-popular-posts-linkedin', '_easy-popular-posts-stumbleupon', '_easy-popular-posts-social', '_easy-popular-posts-comments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easy-popular-posts-pageviews', '_easy-popular-posts-twitter', '_easy-popular-posts-facebook', '_easy-popular-posts-linkedin', '_easy-popular-posts-stumbleupon', '_easy-popular-posts-social', '_easy-popular-posts-comments');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy-popular-posts-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy-popular-posts-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy-popular-posts-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy-popular-posts-%';

