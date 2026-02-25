-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akp_auth_role', 'akp_custom_css', 'akp_image_sizes', 'akp_ga_implemented', 'akp_ga_imp_action', 'akp_ga_click_action', 'akp_default_media_type', 'akp_default_remove_link', 'akp_default_window_target', 'akp_default_nofollow', 'apk_db_version', 'akp_ga_intergrated', 'akp_track_impressions', 'revenue_currency', 'week_starts', 'akp_track_clicks', 'akp_default_rev_imp', 'akp_default_rev_click', 'akp_clear_on_delete', 'expiry_time', 'pdf_theme');
DELETE FROM wp_options WHERE option_name LIKE 'akp_advert_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('akp_expiry_date', 'akp_ga_campaign', 'akp_ga_banner', 'akp_media_type', 'akp_image_url', 'akp_rollover_image', 'akp_image_alt', 'akp_html5_url', 'akp_html5_width', 'akp_html5_height', 'akp_flash_url', 'akp_flash_width', 'akp_flash_height', 'akp_adsense_code', 'akp_text', 'akp_remove_url', 'akp_target', 'akp_nofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('akp_expiry_date', 'akp_ga_campaign', 'akp_ga_banner', 'akp_media_type', 'akp_image_url', 'akp_rollover_image', 'akp_image_alt', 'akp_html5_url', 'akp_html5_width', 'akp_html5_height', 'akp_flash_url', 'akp_flash_width', 'akp_flash_height', 'akp_adsense_code', 'akp_text', 'akp_remove_url', 'akp_target', 'akp_nofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('akp_expiry_date', 'akp_ga_campaign', 'akp_ga_banner', 'akp_media_type', 'akp_image_url', 'akp_rollover_image', 'akp_image_alt', 'akp_html5_url', 'akp_html5_width', 'akp_html5_height', 'akp_flash_url', 'akp_flash_width', 'akp_flash_height', 'akp_adsense_code', 'akp_text', 'akp_remove_url', 'akp_target', 'akp_nofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('akp_expiry_date', 'akp_ga_campaign', 'akp_ga_banner', 'akp_media_type', 'akp_image_url', 'akp_rollover_image', 'akp_image_alt', 'akp_html5_url', 'akp_html5_width', 'akp_html5_height', 'akp_flash_url', 'akp_flash_width', 'akp_flash_height', 'akp_adsense_code', 'akp_text', 'akp_remove_url', 'akp_target', 'akp_nofollow');

