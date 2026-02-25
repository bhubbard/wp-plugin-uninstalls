-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adsoptimal_access_token', 'adsoptimal_email', 'adsoptimal_publisher_id', 'adsoptimal_settings', 'adsoptimal_enable_desktop_ad', 'adsoptimal_top_ad_alignment', 'adsoptimal_content_ad_alignment', 'adsoptimal_footer_ad_alignment', 'adsoptimal_enable_post_ad', 'adsoptimal_enable_page_ad', 'adsoptimal_top_ad_type', 'adsoptimal_content_ad_type', 'adsoptimal_footer_ad_type', 'adsoptimal_content_ad_every');

