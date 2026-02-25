-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htevent_slug', 'htevent_speaker_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'category-image-id', 'content_cat_layout', 'cat_showicon_option', '_post_like_count', '_user_liked', '_user_IP', '_htevent_day', '_htevent_time', '_htevent_spacker_name', '_htevent_position', '_htevent_ticket', '_htevent_ticket_link', '_htevent_location', '_htevent_date', '_wp_attachment_image_alt', '_htevent_speaker_info', '_htevent_repeat_group', '_htevent_spacker_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'category-image-id', 'content_cat_layout', 'cat_showicon_option', '_post_like_count', '_user_liked', '_user_IP', '_htevent_day', '_htevent_time', '_htevent_spacker_name', '_htevent_position', '_htevent_ticket', '_htevent_ticket_link', '_htevent_location', '_htevent_date', '_wp_attachment_image_alt', '_htevent_speaker_info', '_htevent_repeat_group', '_htevent_spacker_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'category-image-id', 'content_cat_layout', 'cat_showicon_option', '_post_like_count', '_user_liked', '_user_IP', '_htevent_day', '_htevent_time', '_htevent_spacker_name', '_htevent_position', '_htevent_ticket', '_htevent_ticket_link', '_htevent_location', '_htevent_date', '_wp_attachment_image_alt', '_htevent_speaker_info', '_htevent_repeat_group', '_htevent_spacker_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'category-image-id', 'content_cat_layout', 'cat_showicon_option', '_post_like_count', '_user_liked', '_user_IP', '_htevent_day', '_htevent_time', '_htevent_spacker_name', '_htevent_position', '_htevent_ticket', '_htevent_ticket_link', '_htevent_location', '_htevent_date', '_wp_attachment_image_alt', '_htevent_speaker_info', '_htevent_repeat_group', '_htevent_spacker_image');

