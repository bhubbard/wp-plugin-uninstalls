-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fuel_player_autoplay_control', 'fuel_player_preroll_control', 'fuel_player_vast_url', 'fuel_player_title_position_option', 'fuel_tiles_heading_option', 'fuel_tiles_category_option', 'fuel_tiles_script_category_option', 'fuel_player_tag_option', 'fuel_player_floating_option', 'fuel_player_floating_position', 'fuel_player_floating_width', 'fuel_player_floating_height', 'fuel_player_share_option', 'fuel_player_embed_option', 'fuel_player_add_method', 'fuel_player_social_option', 'fuel_player_enable_facebook', 'fuel_player_enable_twitter', 'fuel_player_enable_linkedIn', 'fuel_player_enable_email', 'fuel_player_gtm_id', 'fuel_player_description_option', 'fuel_player_enable_facebook_app_id', 'fuel_player_enable_facebook_app_secret', 'fuel_player_audio_control');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fuel_mrss_cron_recurrence', 'fuel_publish_date', 'fuel_mrss_url', 'video_link', 'image_for_player_thumbnail', 'image_for_tiles', 'channel_id', 'swc_id', 'fuel_mrss_post_status', 'fuel_clip_guid', 'fuel_mrss_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fuel_mrss_cron_recurrence', 'fuel_publish_date', 'fuel_mrss_url', 'video_link', 'image_for_player_thumbnail', 'image_for_tiles', 'channel_id', 'swc_id', 'fuel_mrss_post_status', 'fuel_clip_guid', 'fuel_mrss_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fuel_mrss_cron_recurrence', 'fuel_publish_date', 'fuel_mrss_url', 'video_link', 'image_for_player_thumbnail', 'image_for_tiles', 'channel_id', 'swc_id', 'fuel_mrss_post_status', 'fuel_clip_guid', 'fuel_mrss_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fuel_mrss_cron_recurrence', 'fuel_publish_date', 'fuel_mrss_url', 'video_link', 'image_for_player_thumbnail', 'image_for_tiles', 'channel_id', 'swc_id', 'fuel_mrss_post_status', 'fuel_clip_guid', 'fuel_mrss_id');

