-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_slideshow_version', 'responsive_slideshow_settings', 'timer_settings', 'easing_settings', 'speed_settings', 'wa_rs_paging', 'wa_rs_posts_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'slide_url', 'position_radio', 'top_textarea');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'slide_url', 'position_radio', 'top_textarea');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'slide_url', 'position_radio', 'top_textarea');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'slide_url', 'position_radio', 'top_textarea');

