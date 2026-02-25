-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sj-html-to-post-shortcode', 'sj-html-to-post', 'sj-css-to-post', 'sj-js-to-post');
DELETE FROM wp_usermeta WHERE meta_key IN ('sj-html-to-post-shortcode', 'sj-html-to-post', 'sj-css-to-post', 'sj-js-to-post');
DELETE FROM wp_termmeta WHERE meta_key IN ('sj-html-to-post-shortcode', 'sj-html-to-post', 'sj-css-to-post', 'sj-js-to-post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sj-html-to-post-shortcode', 'sj-html-to-post', 'sj-css-to-post', 'sj-js-to-post');

