-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tzwrs_wrs_schedule_page_id', 'tzwrs_wrs_signup_page_id', 'easy_social_sharing_twitter_username', 'tzwrs_wrs_logo', 'tzwrs_wrs_cf7_join_modal_id', 'tzwrs_wrs_default_avatar_size', 'easy_social_sharing_inline_enable_share_counts', 'easy_social_sharing_inline_icon_shape', 'easy_social_sharing_inline_layouts', 'easy_social_sharing_inline_enable_networks_label', 'easy_social_sharing_inline_enable_all_networks');
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_schedule_page_id';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_playnowtext';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_address';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_audio_address';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_default_images';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_follower_notifications';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_post_notifications';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_slot_notifications';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_send_dj_weekly_notifications';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_accent_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_secondary_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_border_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_header_footer_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_color_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_need_approval';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_name_chars';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_show_name_chars';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_show_name_field_id';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_max_desc_chars';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_default_avatar_size';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_join_id';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_join_modal_id';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_cf7_message_id';
DELETE FROM wp_options WHERE option_name LIKE '%wrs_max_desc_chars';
DELETE FROM wp_options WHERE option_name LIKE '%_wrs_signup_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_showyear', 'user_birthday', 'user_show_name', 'user_twitter', 'user_fbprofile', 'user_fbpage', 'user_instagram', 'user_mixcloud', 'user_pronoun', 'user_follower_notes', 'user_post_notes', 'user_slot_notes', 'user_digest_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_showyear', 'user_birthday', 'user_show_name', 'user_twitter', 'user_fbprofile', 'user_fbpage', 'user_instagram', 'user_mixcloud', 'user_pronoun', 'user_follower_notes', 'user_post_notes', 'user_slot_notes', 'user_digest_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_showyear', 'user_birthday', 'user_show_name', 'user_twitter', 'user_fbprofile', 'user_fbpage', 'user_instagram', 'user_mixcloud', 'user_pronoun', 'user_follower_notes', 'user_post_notes', 'user_slot_notes', 'user_digest_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_showyear', 'user_birthday', 'user_show_name', 'user_twitter', 'user_fbprofile', 'user_fbpage', 'user_instagram', 'user_mixcloud', 'user_pronoun', 'user_follower_notes', 'user_post_notes', 'user_slot_notes', 'user_digest_notes');

