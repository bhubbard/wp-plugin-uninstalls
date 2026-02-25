-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('netgo_facebook_app_id', 'netgo_facebook_secret_key', 'netgo_facebook_page_id', 'netgo_ins_user_id', 'netgo_ins_access_token', 'netgo_pi_user_name', 'netgo_access_token', 'netgo_access_token_secret', 'netgo_consumer_key', 'netgo_consumer_secret', 'netgo_screen_name', 'netgo_youtube_video_url', 'netgo_facebook_enable_jquery', 'netgo_fb_enable', 'netgo_tw_enable', 'netgo_ins_enable', 'netgo_pi_enable', 'netgo_yt_enable', 'netgo_box_h', 'netgo_feeds', 'netgo_jquery_include');

