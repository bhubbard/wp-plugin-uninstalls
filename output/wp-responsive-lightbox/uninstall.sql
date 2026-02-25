-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dd_lightbox_ads_visiblity', 'dd_lightbox_ads_custom_url', 'dd_lightbox_ads_imgurl', 'dd_lightbox_ads_link', 'dd_lightbox_ads_lbbg', 'dd_lightbox_ads_delay', 'dd_lightbox_ads_width', 'dd_lightbox_setting_allowfooter', 'dd_lightbox_setting_footertext', 'dd_lightbox_ads_display_type');

