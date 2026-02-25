-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bbp_topic_notice_body', '_bbp_topic_notice_title', '_bbp_reply_notice_body', '_bbp_reply_notice_title');

