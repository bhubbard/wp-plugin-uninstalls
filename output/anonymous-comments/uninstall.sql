-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('anonymous_comments', 'show_author_anonymous_comments', 'admin_bypass_anonymous_comments', 'anonymous_comment_authors');
DELETE FROM wp_usermeta WHERE meta_key IN ('anonymous_comments', 'show_author_anonymous_comments', 'admin_bypass_anonymous_comments', 'anonymous_comment_authors');
DELETE FROM wp_termmeta WHERE meta_key IN ('anonymous_comments', 'show_author_anonymous_comments', 'admin_bypass_anonymous_comments', 'anonymous_comment_authors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('anonymous_comments', 'show_author_anonymous_comments', 'admin_bypass_anonymous_comments', 'anonymous_comment_authors');

