-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_attachment', '_bbp_author_ip', '_duplicate_of', '_duplicates', '_bbp_activity_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_attachment', '_bbp_author_ip', '_duplicate_of', '_duplicates', '_bbp_activity_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_attachment', '_bbp_author_ip', '_duplicate_of', '_duplicates', '_bbp_activity_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_attachment', '_bbp_author_ip', '_duplicate_of', '_duplicates', '_bbp_activity_id');

