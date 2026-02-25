-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', '_bp_activity_privacy_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtmedia_counts_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtmedia_counts_%';

