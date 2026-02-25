-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_online_users', 'um_online_users_last_updated', 'um_options', 'um_online_version', 'um_online_last_version_upgrade', 'widget_um_online_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hide_online_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hide_online_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hide_online_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hide_online_status');

