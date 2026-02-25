-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title_main_heading', 'pcsp_bg_image_url', 'description_content_block', 'google_plus_url', 'facebook_page_url', 'twitter_handle_url');

