-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'flickr_api_settings', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'awl_fg_post_settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'awl_fg_post_settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'awl_fg_post_settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awl_fg_post_settings_%';

