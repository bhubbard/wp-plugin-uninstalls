-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adsrevshare_member_ad_percentage', 'adsrevshare_admin_publisher_id', 'adsrevshare_admin_custom_channel_id', 'adsrevshare_admin_ad_slot', 'adsrevshare_manual_ads_txt', 'adsrevshare_website_url', 'adsrevshare_ad_footer_enabled', 'adsrevshare_ad_footer_type', 'adsrevshare_ad_footer_custom_code', 'adsrevshare_admin_website_url', 'adsrevshare_ad_top_enabled', 'adsrevshare_ad_bottom_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adsrevshare_publisher_id', 'adsrevshare_custom_channel_id', 'adsrevshare_ad_slot', 'adsrevshare_website_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('adsrevshare_publisher_id', 'adsrevshare_custom_channel_id', 'adsrevshare_ad_slot', 'adsrevshare_website_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('adsrevshare_publisher_id', 'adsrevshare_custom_channel_id', 'adsrevshare_ad_slot', 'adsrevshare_website_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adsrevshare_publisher_id', 'adsrevshare_custom_channel_id', 'adsrevshare_ad_slot', 'adsrevshare_website_url');

