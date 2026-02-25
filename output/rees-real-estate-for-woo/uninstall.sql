-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woorealestate_params', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woorealestate_country', 'woorealestate_additional_detail', '_woorealestate_type', 'woorealestate_property_floor', 'woorealestate_file_attach', 'woorealestate_video_image', 'woorealestate_video_url', 'woore_tour_settings', 'woorealestate_property_location', 'woorealestate_video_local_id', 'woorealestate_video_type', 'woore_tour_data', 'woore_info_mobile', 'woore_info_fax_number', 'woore_info_skype', 'woore_social_facebook', 'woore_social_twitter', 'woore_social_linkedin', 'woore_social_pinterest', 'woore_social_instagram', 'woore_social_youtube', 'woore_social_vimeo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woorealestate_country', 'woorealestate_additional_detail', '_woorealestate_type', 'woorealestate_property_floor', 'woorealestate_file_attach', 'woorealestate_video_image', 'woorealestate_video_url', 'woore_tour_settings', 'woorealestate_property_location', 'woorealestate_video_local_id', 'woorealestate_video_type', 'woore_tour_data', 'woore_info_mobile', 'woore_info_fax_number', 'woore_info_skype', 'woore_social_facebook', 'woore_social_twitter', 'woore_social_linkedin', 'woore_social_pinterest', 'woore_social_instagram', 'woore_social_youtube', 'woore_social_vimeo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woorealestate_country', 'woorealestate_additional_detail', '_woorealestate_type', 'woorealestate_property_floor', 'woorealestate_file_attach', 'woorealestate_video_image', 'woorealestate_video_url', 'woore_tour_settings', 'woorealestate_property_location', 'woorealestate_video_local_id', 'woorealestate_video_type', 'woore_tour_data', 'woore_info_mobile', 'woore_info_fax_number', 'woore_info_skype', 'woore_social_facebook', 'woore_social_twitter', 'woore_social_linkedin', 'woore_social_pinterest', 'woore_social_instagram', 'woore_social_youtube', 'woore_social_vimeo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woorealestate_country', 'woorealestate_additional_detail', '_woorealestate_type', 'woorealestate_property_floor', 'woorealestate_file_attach', 'woorealestate_video_image', 'woorealestate_video_url', 'woore_tour_settings', 'woorealestate_property_location', 'woorealestate_video_local_id', 'woorealestate_video_type', 'woore_tour_data', 'woore_info_mobile', 'woore_info_fax_number', 'woore_info_skype', 'woore_social_facebook', 'woore_social_twitter', 'woore_social_linkedin', 'woore_social_pinterest', 'woore_social_instagram', 'woore_social_youtube', 'woore_social_vimeo');

