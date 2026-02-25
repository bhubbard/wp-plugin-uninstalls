#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'pp_capabilities_activated'
wp option delete 'capsman_role_redirects'
wp option delete 'cme_editor_features_private_post_type'
wp option delete 'cme_capabilities_edit_user_multi_roles'
wp option delete 'cme_capabilities_add_user_multi_roles'
wp option delete 'capsman_profile_features_updated'
wp option delete 'capsman_dashboard_features_status'
wp option delete 'ppc_admin_features_settings'
wp option delete 'capsman_nav_item_menus'
wp option delete 'cme_admin_notice_data'
wp option delete 'cme_admin_notice_options'
wp option delete 'cme_capabilities_show_private_post_types'
wp option delete 'cme_form-rows'
wp option delete 'cme_display_branding'
wp option delete 'cme_autocreate_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backup_datestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backup_initial_datestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_backup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'pp_c_version'
wp option delete 'ppperm_added_role_caps_10beta'
wp option delete 'capsman_backup_datestamp'
wp option delete 'capsman_last_backup'
wp option delete 'capsman_backup_initial'
wp option delete 'capsman_backup_initial_datestamp'
wp option delete 'cme_migrated_taxonomy_caps'
wp option delete 'capsman_disabled_admin_features'
wp option delete 'pp_capabilities_custom_admin_styles'
wp option delete 'pp_capabilities_admin_styles_roles'
wp option delete 'capsman_frontend_features_elements'
wp option delete 'capsman_frontend_features_demo_installed'
wp option delete 'capsman_disabled_frontend_features'
wp option delete 'capsman_disabled_profile_features'
wp option delete 'cme_profile_features_auto_redirect'
wp option delete 'capsman_profile_features_elements_testing_role'
wp option delete 'capsman_profile_features_elements'
wp option delete 'capsman_profile_features_role'
wp option delete 'cme_pp_options_migrated'
wp option delete 'cme_enabled_post_types'
wp option delete 'cme_detailed_taxonomies'
wp option delete 'classic-editor-allow-users'
wp option delete 'classic-editor-replace'
wp option delete 'pp_role_usage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cme_backup_auto_%'"
wp option delete 'cme_editor_features_classic_editor_tab'
wp option delete 'cme_role_same_page_redirect_cookie'
wp option delete 'pp_customized_roles'
wp option delete 'presspermit_supplemental_role_defs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_define_create_posts_cap'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_role_option'"
wp option delete 'capsman_admin_menus'
wp option delete 'cme_capabilities_show_private_taxonomies'
wp option delete 'cme_test_user_admin_bar'
wp option delete 'cme_test_user_admin_bar_search'
wp option delete 'cme_test_user_footer_notice'
wp option delete 'cme_test_user_excluded_roles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppc_custom_style_saved_%' OR option_name LIKE '_site_transient_ppc_custom_style_saved_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppc_custom_style_deleted_%' OR option_name LIKE '_site_transient_ppc_custom_style_deleted_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppc_custom_style_error_%' OR option_name LIKE '_site_transient_ppc_custom_style_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppc_admin_styles_saved_%' OR option_name LIKE '_site_transient_ppc_admin_styles_saved_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppc_sidebar_metabox_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppc_sidebar_metabox_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppc_sidebar_metabox_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppc_sidebar_metabox_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppc_frontendelements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppc_frontendelements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppc_frontendelements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppc_frontendelements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppc_first_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppc_first_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppc_first_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppc_first_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
