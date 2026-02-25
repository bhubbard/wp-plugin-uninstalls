-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialsnap_rating', 'socialsnap_activation_redirect', 'socialsnap_authorized_networks', 'socialsnap_version', 'socialsnap_activated', 'dpsp_settings', 'dpsp_location_sidebar', 'dpsp_location_content', 'dpsp_location_sticky_bar', 'fsb_global_option', 'mashsb_settings', 'social_warfare_settings', 'classic-editor-replace', 'socialsnap_homepage_share_count_timestamp', 'socialsnap_homepage_share_count_total', 'socialsnap_settings', 'socialsnap_bitly_access_token', 'socialsnap_bitly_user_date', 'socialsnap_bitly_username', 'socialsnap_cached_bitly_links', 'socialsnap_follow_counts', 'socialsnap_license_updates', 'socialsnap_license', 'socialsnap_addons', 'socialsnap_activation_redirect', 'ss_facebook_token');
DELETE FROM wp_options WHERE option_name LIKE 'socialsnap_homepage_click_share_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'socialsnap_homepage_share_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'socialsnap_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ss_social_share_disable', 'ss_total_share_count', 'ss_ss_custom_tweet', 'classic-editor-remember', 'socialsnap_share_count_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('ss_social_share_disable', 'ss_total_share_count', 'ss_ss_custom_tweet', 'classic-editor-remember', 'socialsnap_share_count_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('ss_social_share_disable', 'ss_total_share_count', 'ss_ss_custom_tweet', 'classic-editor-remember', 'socialsnap_share_count_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ss_social_share_disable', 'ss_total_share_count', 'ss_ss_custom_tweet', 'classic-editor-remember', 'socialsnap_share_count_timestamp');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_ss_share_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_ss_share_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_ss_share_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_ss_share_count_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_ss_click_share_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%';

