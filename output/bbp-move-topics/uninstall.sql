-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpmt-ptot-donot-close', 'bbpmt-ptot-del-comments', 'bbpmt-ptot-add-author', 'bbpmt-ptot-anon-author', 'bbpmt-ptot-finalcomment-cb', 'bbpmt-ptot-finalcomment-link', 'bbpmt-ptot-finalcomment-text', 'bbpmt-ptot-cuttopic-cb', 'bbpmt-ptot-cuttopic-nbr', 'bbpmt-ptot-cutcomment-cb', 'bbpmt-ptot-cutcomment-nbr', 'bbpmt-ptot-add-post-link', 'bbpmt-ptot-close-for-comment');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbpmt_movedon', '_bbpmt_movedfrom', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbpmt_zapped', 'bbpmt_convtoreply_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbpmt_movedon', '_bbpmt_movedfrom', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbpmt_zapped', 'bbpmt_convtoreply_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbpmt_movedon', '_bbpmt_movedfrom', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbpmt_zapped', 'bbpmt_convtoreply_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbpmt_movedon', '_bbpmt_movedfrom', '_bbp_forum_id', '_bbp_last_active_id', '_bbp_last_active_time', '_bbpmt_zapped', 'bbpmt_convtoreply_id');

