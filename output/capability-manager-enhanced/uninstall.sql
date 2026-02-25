-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'pp_capabilities_activated', 'capsman_role_redirects', 'cme_editor_features_private_post_type', 'cme_capabilities_edit_user_multi_roles', 'cme_capabilities_add_user_multi_roles', 'capsman_profile_features_updated', 'capsman_dashboard_features_status', 'ppc_admin_features_settings', 'capsman_nav_item_menus', 'cme_admin_notice_data', 'cme_admin_notice_options', 'cme_capabilities_show_private_post_types', 'cme_form-rows', 'cme_display_branding', 'cme_autocreate_roles', 'pp_c_version', 'ppperm_added_role_caps_10beta', 'capsman_backup_datestamp', 'capsman_last_backup', 'capsman_backup_initial', 'capsman_backup_initial_datestamp', 'cme_migrated_taxonomy_caps', 'capsman_disabled_admin_features', 'pp_capabilities_custom_admin_styles', 'pp_capabilities_admin_styles_roles', 'capsman_frontend_features_elements', 'capsman_frontend_features_demo_installed', 'capsman_disabled_frontend_features', 'capsman_disabled_profile_features', 'cme_profile_features_auto_redirect', 'capsman_profile_features_elements_testing_role', 'capsman_profile_features_elements', 'capsman_profile_features_role', 'cme_pp_options_migrated', 'cme_enabled_post_types', 'cme_detailed_taxonomies', 'classic-editor-allow-users', 'classic-editor-replace', 'pp_role_usage', 'cme_editor_features_classic_editor_tab', 'cme_role_same_page_redirect_cookie', 'pp_customized_roles', 'presspermit_supplemental_role_defs', 'capsman_admin_menus', 'cme_capabilities_show_private_taxonomies', 'cme_test_user_admin_bar', 'cme_test_user_admin_bar_search', 'cme_test_user_footer_notice', 'cme_test_user_excluded_roles');
DELETE FROM wp_options WHERE option_name LIKE '%_backup_datestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_backup_initial_datestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_backup';
DELETE FROM wp_options WHERE option_name LIKE '%_last_backup';
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';
DELETE FROM wp_options WHERE option_name LIKE 'cme_backup_auto_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_define_create_posts_cap';
DELETE FROM wp_options WHERE option_name LIKE '%_role_option';
DELETE FROM wp_options WHERE option_name LIKE 'ppc_custom_style_saved_%';
DELETE FROM wp_options WHERE option_name LIKE 'ppc_custom_style_deleted_%';
DELETE FROM wp_options WHERE option_name LIKE 'ppc_custom_style_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'ppc_admin_styles_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ppc_sidebar_metabox_state', '_ppc_frontendelements', 'classic-editor-remember', 'wp_classic-editor-settings', '_ppc_first_login', '_menu_item_menu_item_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('ppc_sidebar_metabox_state', '_ppc_frontendelements', 'classic-editor-remember', 'wp_classic-editor-settings', '_ppc_first_login', '_menu_item_menu_item_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('ppc_sidebar_metabox_state', '_ppc_frontendelements', 'classic-editor-remember', 'wp_classic-editor-settings', '_ppc_first_login', '_menu_item_menu_item_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ppc_sidebar_metabox_state', '_ppc_frontendelements', 'classic-editor-remember', 'wp_classic-editor-settings', '_ppc_first_login', '_menu_item_menu_item_parent');

