-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_comment_form_title', 'disqus_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccft_post_comment_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccft_post_comment_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccft_post_comment_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccft_post_comment_title');

