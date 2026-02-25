-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rc_bbps_update_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbps_topic_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbps_topic_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbps_topic_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbps_topic_status');

