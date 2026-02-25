-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GOEX_VER', 'goex_update', 'widget_goex', 'goex_settings_config', 'goex_rand', 'goex_transients');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('goExBodyImgID', '_goex_link_to_image', 'workout', 'category-image-id', '_wp_attachment_image_alt', 'go_exercise_target', 'go_exercise_synergist', 'go_exercise_stabiliser', 'go_exercise_muscle_description', 'go_exercise_muscle_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('goExBodyImgID', '_goex_link_to_image', 'workout', 'category-image-id', '_wp_attachment_image_alt', 'go_exercise_target', 'go_exercise_synergist', 'go_exercise_stabiliser', 'go_exercise_muscle_description', 'go_exercise_muscle_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('goExBodyImgID', '_goex_link_to_image', 'workout', 'category-image-id', '_wp_attachment_image_alt', 'go_exercise_target', 'go_exercise_synergist', 'go_exercise_stabiliser', 'go_exercise_muscle_description', 'go_exercise_muscle_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('goExBodyImgID', '_goex_link_to_image', 'workout', 'category-image-id', '_wp_attachment_image_alt', 'go_exercise_target', 'go_exercise_synergist', 'go_exercise_stabiliser', 'go_exercise_muscle_description', 'go_exercise_muscle_action');

