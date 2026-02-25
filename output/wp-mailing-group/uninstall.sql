-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPMG_SETTINGS');
DELETE FROM wp_options WHERE option_name LIKE 'wpmg_status_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('User_status', 'Group_subscribed', 'Plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('User_status', 'Group_subscribed', 'Plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('User_status', 'Group_subscribed', 'Plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('User_status', 'Group_subscribed', 'Plugin');

