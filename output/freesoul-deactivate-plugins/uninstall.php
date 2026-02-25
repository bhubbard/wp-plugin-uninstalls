<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('_site_transient_update_themes');
delete_site_option('_site_transient_update_themes');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eos_dp_activation_info');
delete_site_option('eos_dp_activation_info');
delete_option('FreesoulDeactivatePluginsPRO_lic_Key');
delete_site_option('FreesoulDeactivatePluginsPRO_lic_Key');
delete_option('eos_dp_by_url');
delete_site_option('eos_dp_by_url');
delete_option('comingsoon_input_psw_email');
delete_site_option('comingsoon_input_psw_email');
delete_option('eos_dp_user_options');
delete_site_option('eos_dp_user_options');
delete_option('eos_dp_archives');
delete_site_option('eos_dp_archives');
delete_option('eos_dp_pro_edd_license_key');
delete_site_option('eos_dp_pro_edd_license_key');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('eos_dp_new_plugin_activated');
delete_site_option('eos_dp_new_plugin_activated');
delete_option('eos_dp_general_setts');
delete_site_option('eos_dp_general_setts');
delete_option('eos_dp_search');
delete_site_option('eos_dp_search');
delete_option('eos_dp_mobile');
delete_site_option('eos_dp_mobile');
delete_option('eos_dp_one_place');
delete_site_option('eos_dp_one_place');
delete_option('eos_dp_browser');
delete_site_option('eos_dp_browser');
delete_option('eos_post_types_plugins');
delete_site_option('eos_post_types_plugins');
delete_option('eos_dp_need_custom_url');
delete_site_option('eos_dp_need_custom_url');
delete_option('eos_dp_opts');
delete_site_option('eos_dp_opts');
delete_option('eos_dp_version');
delete_site_option('eos_dp_version');
delete_option('eos_dp_parent_plugin_pages');
delete_site_option('eos_dp_parent_plugin_pages');
delete_option('eos_dp_admin_theme');
delete_site_option('eos_dp_admin_theme');
delete_option('eos_dp_admin_menu');
delete_site_option('eos_dp_admin_menu');
delete_option('eos_dp_admin_setts');
delete_site_option('eos_dp_admin_setts');
delete_option('eos_dp_admin_url_theme');
delete_site_option('eos_dp_admin_url_theme');
delete_option('eos_dp_by_admin_url');
delete_site_option('eos_dp_by_admin_url');
delete_option('eos_dp_integration_actions');
delete_site_option('eos_dp_integration_actions');
delete_option('eos_dp_integretion_actions_theme');
delete_site_option('eos_dp_integretion_actions_theme');
delete_option('eos_dp_pro_main');
delete_site_option('eos_dp_pro_main');
delete_option('eos_dp_roles_manager');
delete_site_option('eos_dp_roles_manager');
delete_option('eos_dp_admin_submenu');
delete_site_option('eos_dp_admin_submenu');
delete_option('eos_dp_admin_page_hooks');
delete_site_option('eos_dp_admin_page_hooks');
delete_option('fdp_code_profiler');
delete_site_option('fdp_code_profiler');
delete_option('fdp_plugin_slug_names');
delete_site_option('fdp_plugin_slug_names');
delete_option('eos_dp_by_rest_api');
delete_site_option('eos_dp_by_rest_api');
delete_option('fdp_site_id');
delete_site_option('fdp_site_id');
delete_option('fdp_last_save');
delete_site_option('fdp_last_save');
delete_option('fdp_addons');
delete_site_option('fdp_addons');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('fdp_update_check_response_body');
delete_site_transient('fdp_update_check_response_body');
delete_transient('fdp_hireus_info');
delete_site_transient('fdp_hireus_info');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fdp_admin_notice_rewrite_rules');
delete_site_transient('fdp_admin_notice_rewrite_rules');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fdp_testing_nonce_%', '_site_transient_fdp_testing_nonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_eos_dp_all_count_%', '_site_transient_eos_dp_all_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_eos_dp_pro_scanning_unused_plugins%', '_site_transient_eos_dp_pro_scanning_unused_plugins%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('eos_dp_pro_scanning_unused_plugins_admin');
delete_site_transient('eos_dp_pro_scanning_unused_plugins_admin');
delete_transient('fdp_plugin_disabledd_fatal_error');
delete_site_transient('fdp_plugin_disabledd_fatal_error');
delete_transient('freesoul-dp-notice-succ');
delete_site_transient('freesoul-dp-notice-succ');
delete_transient('freesoul-dp-updating-mu');
delete_site_transient('freesoul-dp-updating-mu');
delete_transient('freesoul-dp-notice-fail');
delete_site_transient('freesoul-dp-notice-fail');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fdp_query_menu_nonce_%', '_site_transient_fdp_query_menu_nonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('eos_dp_pro_unique_id');
delete_site_transient('eos_dp_pro_unique_id');
delete_transient('eos_dp_changelog_version');
delete_site_transient('eos_dp_changelog_version');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__fdp_pro_post_nsg_%', '_site_transient__fdp_pro_post_nsg_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('eos_dp_pro_scanning_unused_plugins');
delete_site_transient('eos_dp_pro_scanning_unused_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fdp_admin_notice_%', '_site_transient_fdp_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('eos_dp_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eos_deactive_plugins_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fdp_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fdp_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fdp_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fdp_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_trashed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_trashed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_trashed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_trashed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fdp_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fdp_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fdp_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fdp_metabox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fdp_csp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fdp_csp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fdp_csp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fdp_csp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fdp_toplevel_admin_menu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fdp_toplevel_admin_menu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fdp_toplevel_admin_menu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fdp_toplevel_admin_menu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_draft' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_draft' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_draft' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eos_deactive_plugins_key_draft' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eos_scfm_mobile_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eos_scfm_mobile_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eos_scfm_mobile_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eos_scfm_mobile_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_eos_deactive_plugins_key%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_eos_deactive_plugins_key%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_eos_deactive_plugins_key%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_eos_deactive_plugins_key%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_capabilities' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );

