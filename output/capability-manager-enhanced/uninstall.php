<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pp_capabilities_activated');
delete_site_option('pp_capabilities_activated');
delete_option('capsman_role_redirects');
delete_site_option('capsman_role_redirects');
delete_option('cme_editor_features_private_post_type');
delete_site_option('cme_editor_features_private_post_type');
delete_option('cme_capabilities_edit_user_multi_roles');
delete_site_option('cme_capabilities_edit_user_multi_roles');
delete_option('cme_capabilities_add_user_multi_roles');
delete_site_option('cme_capabilities_add_user_multi_roles');
delete_option('capsman_profile_features_updated');
delete_site_option('capsman_profile_features_updated');
delete_option('capsman_dashboard_features_status');
delete_site_option('capsman_dashboard_features_status');
delete_option('ppc_admin_features_settings');
delete_site_option('ppc_admin_features_settings');
delete_option('capsman_nav_item_menus');
delete_site_option('capsman_nav_item_menus');
delete_option('cme_admin_notice_data');
delete_site_option('cme_admin_notice_data');
delete_option('cme_admin_notice_options');
delete_site_option('cme_admin_notice_options');
delete_option('cme_capabilities_show_private_post_types');
delete_site_option('cme_capabilities_show_private_post_types');
delete_option('cme_form-rows');
delete_site_option('cme_form-rows');
delete_option('cme_display_branding');
delete_site_option('cme_display_branding');
delete_option('cme_autocreate_roles');
delete_site_option('cme_autocreate_roles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_backup_datestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_backup_initial_datestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_backup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_backup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%user_roles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pp_c_version');
delete_site_option('pp_c_version');
delete_option('ppperm_added_role_caps_10beta');
delete_site_option('ppperm_added_role_caps_10beta');
delete_option('capsman_backup_datestamp');
delete_site_option('capsman_backup_datestamp');
delete_option('capsman_last_backup');
delete_site_option('capsman_last_backup');
delete_option('capsman_backup_initial');
delete_site_option('capsman_backup_initial');
delete_option('capsman_backup_initial_datestamp');
delete_site_option('capsman_backup_initial_datestamp');
delete_option('cme_migrated_taxonomy_caps');
delete_site_option('cme_migrated_taxonomy_caps');
delete_option('capsman_disabled_admin_features');
delete_site_option('capsman_disabled_admin_features');
delete_option('pp_capabilities_custom_admin_styles');
delete_site_option('pp_capabilities_custom_admin_styles');
delete_option('pp_capabilities_admin_styles_roles');
delete_site_option('pp_capabilities_admin_styles_roles');
delete_option('capsman_frontend_features_elements');
delete_site_option('capsman_frontend_features_elements');
delete_option('capsman_frontend_features_demo_installed');
delete_site_option('capsman_frontend_features_demo_installed');
delete_option('capsman_disabled_frontend_features');
delete_site_option('capsman_disabled_frontend_features');
delete_option('capsman_disabled_profile_features');
delete_site_option('capsman_disabled_profile_features');
delete_option('cme_profile_features_auto_redirect');
delete_site_option('cme_profile_features_auto_redirect');
delete_option('capsman_profile_features_elements_testing_role');
delete_site_option('capsman_profile_features_elements_testing_role');
delete_option('capsman_profile_features_elements');
delete_site_option('capsman_profile_features_elements');
delete_option('capsman_profile_features_role');
delete_site_option('capsman_profile_features_role');
delete_option('cme_pp_options_migrated');
delete_site_option('cme_pp_options_migrated');
delete_option('cme_enabled_post_types');
delete_site_option('cme_enabled_post_types');
delete_option('cme_detailed_taxonomies');
delete_site_option('cme_detailed_taxonomies');
delete_option('classic-editor-allow-users');
delete_site_option('classic-editor-allow-users');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('pp_role_usage');
delete_site_option('pp_role_usage');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cme_backup_auto_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cme_editor_features_classic_editor_tab');
delete_site_option('cme_editor_features_classic_editor_tab');
delete_option('cme_role_same_page_redirect_cookie');
delete_site_option('cme_role_same_page_redirect_cookie');
delete_option('pp_customized_roles');
delete_site_option('pp_customized_roles');
delete_option('presspermit_supplemental_role_defs');
delete_site_option('presspermit_supplemental_role_defs');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_define_create_posts_cap' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_role_option' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('capsman_admin_menus');
delete_site_option('capsman_admin_menus');
delete_option('cme_capabilities_show_private_taxonomies');
delete_site_option('cme_capabilities_show_private_taxonomies');
delete_option('cme_test_user_admin_bar');
delete_site_option('cme_test_user_admin_bar');
delete_option('cme_test_user_admin_bar_search');
delete_site_option('cme_test_user_admin_bar_search');
delete_option('cme_test_user_footer_notice');
delete_site_option('cme_test_user_footer_notice');
delete_option('cme_test_user_excluded_roles');
delete_site_option('cme_test_user_excluded_roles');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppc_custom_style_saved_%', '_site_transient_ppc_custom_style_saved_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppc_custom_style_deleted_%', '_site_transient_ppc_custom_style_deleted_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppc_custom_style_error_%', '_site_transient_ppc_custom_style_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppc_admin_styles_saved_%', '_site_transient_ppc_admin_styles_saved_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppc_sidebar_metabox_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppc_sidebar_metabox_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppc_sidebar_metabox_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppc_sidebar_metabox_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppc_frontendelements' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppc_frontendelements' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppc_frontendelements' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppc_frontendelements' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppc_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppc_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppc_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppc_first_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );

