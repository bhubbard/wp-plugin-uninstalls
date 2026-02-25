-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_language');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bpcp_forum_id', '_bpcp_last_activity', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bpcp_forum_id', '_bpcp_last_activity', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bpcp_forum_id', '_bpcp_last_activity', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bpcp_forum_id', '_bpcp_last_activity', '_edit_last');

