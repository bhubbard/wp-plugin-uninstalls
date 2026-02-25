-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stea_widget_status', 'stea_license_status', 'stea_pro_widgets', 'stea_widget_defaults_initialized', 'stea_license_key', 'stea_db_version', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_enable_signup_and_login_from_checkout', 'elementor_cpt_support', 'stea_themer_frontend_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_template_type', '_wp_page_template', 'stea_wishlist', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_target_exclude_locations', 'stea_theme_builder_target_user_roles', 'stea_theme_builder_template_type', 'stea_theme_builder_sticky', 'stea_hf_include_locations', 'stea_hf_exclude_locations', 'stea_hf_target_user_roles', 'stea_hf_template_type', 'stea-hf__enable-for-canvas', 'stea_selectcategory_layout', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_template_type', '_wp_page_template', 'stea_wishlist', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_target_exclude_locations', 'stea_theme_builder_target_user_roles', 'stea_theme_builder_template_type', 'stea_theme_builder_sticky', 'stea_hf_include_locations', 'stea_hf_exclude_locations', 'stea_hf_target_user_roles', 'stea_hf_template_type', 'stea-hf__enable-for-canvas', 'stea_selectcategory_layout', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_template_type', '_wp_page_template', 'stea_wishlist', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_target_exclude_locations', 'stea_theme_builder_target_user_roles', 'stea_theme_builder_template_type', 'stea_theme_builder_sticky', 'stea_hf_include_locations', 'stea_hf_exclude_locations', 'stea_hf_target_user_roles', 'stea_hf_template_type', 'stea-hf__enable-for-canvas', 'stea_selectcategory_layout', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_template_type', '_wp_page_template', 'stea_wishlist', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_target_exclude_locations', 'stea_theme_builder_target_user_roles', 'stea_theme_builder_template_type', 'stea_theme_builder_sticky', 'stea_hf_include_locations', 'stea_hf_exclude_locations', 'stea_hf_target_user_roles', 'stea_hf_template_type', 'stea-hf__enable-for-canvas', 'stea_selectcategory_layout', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
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

