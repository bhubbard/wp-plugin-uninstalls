-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_element_settings', 'easy_element_user_data', 'easyel_enable_js_animation', 'easyel_enable_cursor', 'easyel_scroll_smoother_settings', 'easyel_plugin_version', 'easyel_admin_promo_notice_dismissed2', 'hfe_plugin_is_activated', 'rtshfe_addon_option', 'hfe_compatibility_option', 'easy_live_copy_btn_enable', 'easyel_elements_minify_css', 'easyel_elements_minify_js', 'easyel_flush_rewrite_rules', 'easyel_reading_progressbar_settings', 'easyelements_permalinks_flushed');
DELETE FROM wp_options WHERE option_name LIKE 'easy_element_%';
DELETE FROM wp_options WHERE option_name LIKE 'easy_element_group_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hfe-popup', 'hfe-subscribed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', '_easyel_fixed_header', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_css', '_elementor_data', '_wp_page_template', '_elementor_template_type', '_elementor_edit_mode', 'easyel_template_type', 'easyel_conditions', '_wp_attachment_image_alt', 'consent', 'easyel__menu_item_elementor_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('hfe-popup', 'hfe-subscribed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', '_easyel_fixed_header', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_css', '_elementor_data', '_wp_page_template', '_elementor_template_type', '_elementor_edit_mode', 'easyel_template_type', 'easyel_conditions', '_wp_attachment_image_alt', 'consent', 'easyel__menu_item_elementor_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('hfe-popup', 'hfe-subscribed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', '_easyel_fixed_header', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_css', '_elementor_data', '_wp_page_template', '_elementor_template_type', '_elementor_edit_mode', 'easyel_template_type', 'easyel_conditions', '_wp_attachment_image_alt', 'consent', 'easyel__menu_item_elementor_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hfe-popup', 'hfe-subscribed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', '_easyel_fixed_header', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_css', '_elementor_data', '_wp_page_template', '_elementor_template_type', '_elementor_edit_mode', 'easyel_template_type', 'easyel_conditions', '_wp_attachment_image_alt', 'consent', 'easyel__menu_item_elementor_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users';

