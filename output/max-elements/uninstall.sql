-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'max_elements_secondary_color_option', 'max_elements_primary_color_option', 'woocommerce_enable_checkout_login_reminder', '_astra_ext_enabled_extensions', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_hold_stock_minutes', 'woocommerce_enable_coupons', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'elementor_cpt_support', 'max_elements_builder_frontend_settings', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_max_elements_checkout_fields_settings', 'max_elements_theme_builder_target_include_locations', 'max_elements_theme_builder_target_exclude_locations', 'max_elements_theme_builder_target_user_roles', 'max_elements_theme_builder_template_type', 'max_elements_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_max_elements_checkout_fields_settings', 'max_elements_theme_builder_target_include_locations', 'max_elements_theme_builder_target_exclude_locations', 'max_elements_theme_builder_target_user_roles', 'max_elements_theme_builder_template_type', 'max_elements_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_max_elements_checkout_fields_settings', 'max_elements_theme_builder_target_include_locations', 'max_elements_theme_builder_target_exclude_locations', 'max_elements_theme_builder_target_user_roles', 'max_elements_theme_builder_template_type', 'max_elements_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_max_elements_checkout_fields_settings', 'max_elements_theme_builder_target_include_locations', 'max_elements_theme_builder_target_exclude_locations', 'max_elements_theme_builder_target_user_roles', 'max_elements_theme_builder_template_type', 'max_elements_theme_builder_sticky', '_elementor_template_type', 'site-post-title', 'site-sidebar-layout', 'site-content-layout', 'footer-sml-layout', 'footer-adv-display', 'ast-main-header-display', '_generate-sidebar-layout-meta', '_generate-full-width-content', '_generate-disable-headline');
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

