-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpr_current_categories', 'wpr_comments_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpr_comment_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpr_comment_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpr_comment_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpr_comment_category');

