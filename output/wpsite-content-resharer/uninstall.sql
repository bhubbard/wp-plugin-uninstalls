-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsite_twitter_reshare_settings', 'wpsite_twitter_reshare_version');
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsite-twitter-reshare-meta-box-hashtags');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsite-twitter-reshare-meta-box-hashtags');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsite-twitter-reshare-meta-box-hashtags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsite-twitter-reshare-meta-box-hashtags');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hashtags';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hashtags';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hashtags';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hashtags';

