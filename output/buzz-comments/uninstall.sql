-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buzz_comments_email', 'buzz_comments_author_id', 'buzz_comments_avatar_image', 'buzz_comments_buzzNoteAfterContent', 'buzz_comments_xfn', 'buzz_comments_debug', 'buzz_comments_version', 'buzz_comments_pid', 'buzz_comments_author_uri');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('buzz_comments_comment_data', 'buzz_comments_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('buzz_comments_comment_data', 'buzz_comments_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('buzz_comments_comment_data', 'buzz_comments_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('buzz_comments_comment_data', 'buzz_comments_data');

