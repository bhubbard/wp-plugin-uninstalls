-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wcfm_chatbox_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcfmmp_profile_settings', '_wcfm_following_list', '_wcfm_followers_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcfmmp_profile_settings', '_wcfm_following_list', '_wcfm_followers_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcfmmp_profile_settings', '_wcfm_following_list', '_wcfm_followers_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcfmmp_profile_settings', '_wcfm_following_list', '_wcfm_followers_list');

