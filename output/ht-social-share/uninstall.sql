-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('social_icon_list', 'socail_btn_style', 'button_position', 'social_post_types', 'facebook_app_id', 'youtube_username', 'instagram_username');

