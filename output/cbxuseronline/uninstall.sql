-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxuseronline_version', 'cbxuseronline_mostonline', 'cbxuseronline_basics', 'cbxuseronline_deactivated_notice', 'cbxuseronline_activated_notice', 'cbxuseronline_upgraded_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxuseronline_lastlogin_time', '_cbxuseronline_lastlogin_data', '_cbxuseronline_second_lastlogin_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxuseronline_lastlogin_time', '_cbxuseronline_lastlogin_data', '_cbxuseronline_second_lastlogin_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxuseronline_lastlogin_time', '_cbxuseronline_lastlogin_data', '_cbxuseronline_second_lastlogin_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxuseronline_lastlogin_time', '_cbxuseronline_lastlogin_data', '_cbxuseronline_second_lastlogin_time');

