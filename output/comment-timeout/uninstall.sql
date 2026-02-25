-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jammycakes_comment_locking');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_comment_timeout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_comment_timeout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_comment_timeout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_comment_timeout');

