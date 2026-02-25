-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpsp_settings', 'mv_grow_license', 'mv_grow_license_status', 'mv_grow_license_status_date', 'mv_grow_license_tier', 'dpsp_location_sidebar', 'hubbub_temp_site_activated_message', 'mv_grow_version', 'dpsp_admin_notice_announce_save_this', 'dpsp_run_setup_info_nag', 'mcp_version', 'dpsp_top_shared_posts', 'dpsp_version', 'dpsp_first_activation', 'dpsp_email_save_this', 'dpsp_facebook_access_token', 'dpsp_active_tools', 'dpsp_location_follow_widget', 'dpsp_location_content', 'dpsp_location_sticky_bar', 'dpsp_dashboard_count_requires_attention', 'dpsp_dashboard_posts_social_information', 'dpsp_dashboard_posts_requires_attention', 'hubbub_license_activated_on_this_website');
DELETE FROM wp_options WHERE option_name LIKE 'dpsp_%';
DELETE FROM wp_options WHERE option_name LIKE 'dpsp_location_%';
DELETE FROM wp_options WHERE option_name LIKE 'dpsp_dashboard_total_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dpsp_networks_shares', 'dpsp_short_link_bitly', 'dpsp_share_options_json', 'dpsp_share_options', 'dpsp_pinterest_hidden_images_json', 'dpsp_pinterest_hidden_images', 'dpsp_post_single_previous_urls_json', 'dpsp_post_single_previous_urls', 'dpsp_save_this_count', 'pin_description', '_wp_attachment_image_alt', 'dpsp_post_previous_urls', 'dpsp_networks_shares_json', 'dpsp_networks_shares_total', 'dpsp_networks_shares_last_updated', 'dpsp_cache_shares_twitter_2', 'dpsp_cache_shares_twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('dpsp_networks_shares', 'dpsp_short_link_bitly', 'dpsp_share_options_json', 'dpsp_share_options', 'dpsp_pinterest_hidden_images_json', 'dpsp_pinterest_hidden_images', 'dpsp_post_single_previous_urls_json', 'dpsp_post_single_previous_urls', 'dpsp_save_this_count', 'pin_description', '_wp_attachment_image_alt', 'dpsp_post_previous_urls', 'dpsp_networks_shares_json', 'dpsp_networks_shares_total', 'dpsp_networks_shares_last_updated', 'dpsp_cache_shares_twitter_2', 'dpsp_cache_shares_twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('dpsp_networks_shares', 'dpsp_short_link_bitly', 'dpsp_share_options_json', 'dpsp_share_options', 'dpsp_pinterest_hidden_images_json', 'dpsp_pinterest_hidden_images', 'dpsp_post_single_previous_urls_json', 'dpsp_post_single_previous_urls', 'dpsp_save_this_count', 'pin_description', '_wp_attachment_image_alt', 'dpsp_post_previous_urls', 'dpsp_networks_shares_json', 'dpsp_networks_shares_total', 'dpsp_networks_shares_last_updated', 'dpsp_cache_shares_twitter_2', 'dpsp_cache_shares_twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dpsp_networks_shares', 'dpsp_short_link_bitly', 'dpsp_share_options_json', 'dpsp_share_options', 'dpsp_pinterest_hidden_images_json', 'dpsp_pinterest_hidden_images', 'dpsp_post_single_previous_urls_json', 'dpsp_post_single_previous_urls', 'dpsp_save_this_count', 'pin_description', '_wp_attachment_image_alt', 'dpsp_post_previous_urls', 'dpsp_networks_shares_json', 'dpsp_networks_shares_total', 'dpsp_networks_shares_last_updated', 'dpsp_cache_shares_twitter_2', 'dpsp_cache_shares_twitter');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_json';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_json';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_json';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_json';

