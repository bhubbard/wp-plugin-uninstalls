-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_sticky_sidebar_settings', 'easy_sticky_sidebar_default_attachment', 'wordpress_cta_design_template_images', 'easy_sticky_sidebar_version', 'easy_sticky_sidebar_migrated', 'SSuprydp_development', 'SSuprydp_location', 'SSuprydp_button_option_text', 'SSuprydp_button_option_backg_color', 'SSuprydp_button_option_font', 'SSuprydp_button_option_weight', 'SSuprydp_button_option_size', 'SSuprydp_button_option_align', 'SSuprydp_button_option_color', 'SSuprydp_content_option_text', 'SSuprydp_content_option_font', 'SSuprydp_content_option_weight', 'SSuprydp_content_option_size', 'SSuprydp_content_option_color', 'SSuprydp_divider_option_color', 'SSuprydp_action_option_text', 'SSuprydp_action_option_font', 'SSuprydp_action_option_weight', 'SSuprydp_action_option_size', 'SSuprydp_action_option_color', 'SSuprydp_action_option_url', 'SSuprydp_dis_mobile', 'SSuprydp_target_blank', 'SSuprydp_nofollow', 'SSuprydp_shrink', 'SSuprydp_img_hideimg');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easy_sticky_sidebar_attachment', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('easy_sticky_sidebar_attachment', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('easy_sticky_sidebar_attachment', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easy_sticky_sidebar_attachment', '_wp_attached_file', '_wp_attachment_metadata');

