-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lecsp_title', 'lecsp_robots_meta', 'lecsp_heading', 'lecsp_heading_text_color', 'lecsp_coming_soon_text', 'lecsp_show_social_media', 'lecsp_fb_link', 'lecsp_twiiter_link', 'lecsp_insta_link', 'lecsp_pinterest_link', 'lecsp_google_link', 'lecsp_linkedin_link', 'body_background_image', 'lecsp_status');

