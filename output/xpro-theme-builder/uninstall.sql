-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'xpro_themer_frontend_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xpro_theme_builder_target_include_locations', 'xpro_theme_builder_target_exclude_locations', 'xpro_theme_builder_target_user_roles', 'xpro_theme_builder_template_type', 'xpro_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_usermeta WHERE meta_key IN ('xpro_theme_builder_target_include_locations', 'xpro_theme_builder_target_exclude_locations', 'xpro_theme_builder_target_user_roles', 'xpro_theme_builder_template_type', 'xpro_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_termmeta WHERE meta_key IN ('xpro_theme_builder_target_include_locations', 'xpro_theme_builder_target_exclude_locations', 'xpro_theme_builder_target_user_roles', 'xpro_theme_builder_template_type', 'xpro_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xpro_theme_builder_target_include_locations', 'xpro_theme_builder_target_exclude_locations', 'xpro_theme_builder_target_user_roles', 'xpro_theme_builder_template_type', 'xpro_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
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

