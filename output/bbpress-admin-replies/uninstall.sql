-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_topic_is_admin', '_bbp_reply_is_admin', '_bbp_reply_is_private');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_topic_is_admin', '_bbp_reply_is_admin', '_bbp_reply_is_private');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_topic_is_admin', '_bbp_reply_is_admin', '_bbp_reply_is_private');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_topic_is_admin', '_bbp_reply_is_admin', '_bbp_reply_is_private');

