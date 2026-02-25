-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ifpwap_app_title', 'ifpwap_select_start_page', 'ifpwap_caching_type', 'ifpwap_orientation', 'ifpwap_display', 'ifpwap_text_direction', 'ifpwap_custom_footer_btn', 'ifpwap_campaign_source', 'ifpwap_campaign_medium', 'ifpwap_campaign_name', 'ifpwap_theme_color', 'ifpwap_app_short_title', 'ifpwap_description', 'ifpwap_app_icon', 'ifpwap_monocrome_icon', 'ifpwap_space_screen_icon', 'ifpwap_background_color', 'ifpwap_select_offline_page', 'ifpwap_pre_caching_manual', 'ifpwap_offline_analytics', 'ifpwap_cache_external_urls', 'ifpwap_exclude_urls_from_cache_list');

