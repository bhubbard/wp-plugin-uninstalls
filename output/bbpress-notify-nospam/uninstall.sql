-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpnns_dismissed_admin_notices', 'bbpnns_v2_conversion_complete', 'bbpress_notify_newtopic_email_subject', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_forum_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_forum_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_forum_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_forum_id');

