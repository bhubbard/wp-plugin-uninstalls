-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ct_checked_now', '_bbp_author_ip', 'ct_bad', 'ct_checked', 'ct_marked_as_spam', '_bbp_forum_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ct_checked_now', '_bbp_author_ip', 'ct_bad', 'ct_checked', 'ct_marked_as_spam', '_bbp_forum_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ct_checked_now', '_bbp_author_ip', 'ct_bad', 'ct_checked', 'ct_marked_as_spam', '_bbp_forum_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ct_checked_now', '_bbp_author_ip', 'ct_bad', 'ct_checked', 'ct_marked_as_spam', '_bbp_forum_id');

