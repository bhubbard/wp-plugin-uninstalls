-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpu-settings', 'wpu-enabled', 'wpu-last-run', 'wpu-version', 'wpu-new-install', 'wpu_set_forum', 'wpu_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpu_posttype', '_wpu_future_xpost', '_wpu_future_ip', 'wpu_last_post', 'wpu-remember-login', 'phpbb_userid', 'phpbb_userLogin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpu_posttype', '_wpu_future_xpost', '_wpu_future_ip', 'wpu_last_post', 'wpu-remember-login', 'phpbb_userid', 'phpbb_userLogin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpu_posttype', '_wpu_future_xpost', '_wpu_future_ip', 'wpu_last_post', 'wpu-remember-login', 'phpbb_userid', 'phpbb_userLogin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpu_posttype', '_wpu_future_xpost', '_wpu_future_ip', 'wpu_last_post', 'wpu-remember-login', 'phpbb_userid', 'phpbb_userLogin');

