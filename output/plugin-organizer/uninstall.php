<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PO_saved_plugin_order');
delete_site_option('PO_saved_plugin_order');
delete_option('PO_disable_plugins_mobile');
delete_site_option('PO_disable_plugins_mobile');
delete_option('PO_custom_post_type_support');
delete_site_option('PO_custom_post_type_support');
delete_option('PO_pt_stored');
delete_site_option('PO_pt_stored');
delete_option('PO_mobile_user_agents');
delete_site_option('PO_mobile_user_agents');
delete_option('PO_disable_compat_notices');
delete_site_option('PO_disable_compat_notices');
delete_option('PO_disable_admin_warning');
delete_site_option('PO_disable_admin_warning');
delete_option('PO_disable_admin_notices');
delete_site_option('PO_disable_admin_notices');
delete_option('PO_custom_css');
delete_site_option('PO_custom_css');
delete_option('PO_fuzzy_url_matching');
delete_site_option('PO_fuzzy_url_matching');
delete_option('PO_ignore_protocol');
delete_site_option('PO_ignore_protocol');
delete_option('PO_ignore_arguments');
delete_site_option('PO_ignore_arguments');
delete_option('PO_order_access_net_admin');
delete_site_option('PO_order_access_net_admin');
delete_option('PO_auto_trailing_slash');
delete_site_option('PO_auto_trailing_slash');
delete_option('PO_enabled_roles');
delete_site_option('PO_enabled_roles');
delete_option('PO_debug_roles');
delete_site_option('PO_debug_roles');
delete_option('PO_disable_plugins_frontend');
delete_site_option('PO_disable_plugins_frontend');
delete_option('PO_disable_plugins_admin');
delete_site_option('PO_disable_plugins_admin');
delete_option('PO_disable_plugins_by_role');
delete_site_option('PO_disable_plugins_by_role');
delete_option('PO_display_debug_msg');
delete_site_option('PO_display_debug_msg');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('PO_version_num');
delete_site_option('PO_version_num');
delete_option('PO_old_posts_moved');
delete_site_option('PO_old_posts_moved');
delete_option('PO_disabled_plugins');
delete_site_option('PO_disabled_plugins');
delete_option('PO_disabled_mobile_plugins');
delete_site_option('PO_disabled_mobile_plugins');
delete_option('PO_disabled_groups');
delete_site_option('PO_disabled_groups');
delete_option('PO_disabled_mobile_groups');
delete_site_option('PO_disabled_mobile_groups');
delete_option('PO_disabled_search_plugins');
delete_site_option('PO_disabled_search_plugins');
delete_option('PO_enabled_search_plugins');
delete_site_option('PO_enabled_search_plugins');
delete_option('PO_disabled_mobile_search_plugins');
delete_site_option('PO_disabled_mobile_search_plugins');
delete_option('PO_enabled_mobile_search_plugins');
delete_site_option('PO_enabled_mobile_search_plugins');
delete_option('PO_disabled_search_groups');
delete_site_option('PO_disabled_search_groups');
delete_option('PO_enabled_search_groups');
delete_site_option('PO_enabled_search_groups');
delete_option('PO_disabled_mobile_search_groups');
delete_site_option('PO_disabled_mobile_search_groups');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_disabled_pt_plugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_enabled_pt_plugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_disabled_mobile_pt_plugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_enabled_mobile_pt_plugins_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_disabled_pt_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_enabled_pt_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_disabled_mobile_pt_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('PO_updating_plugin');
delete_site_option('PO_updating_plugin');
delete_option('PO_admin_styles');
delete_site_option('PO_admin_styles');
delete_option('PO_old_urls_moved');
delete_site_option('PO_old_urls_moved');
delete_option('PO_old_groups_moved');
delete_site_option('PO_old_groups_moved');
delete_option('PO_preserve_settings');
delete_site_option('PO_preserve_settings');
delete_option('PO_group_members_corrected');
delete_site_option('PO_group_members_corrected');
delete_option('PO_admin_disable_plugins');
delete_site_option('PO_admin_disable_plugins');
delete_option('PO_disable_by_role');
delete_site_option('PO_disable_by_role');
delete_option('PO_disable_mobile_plugins');
delete_site_option('PO_disable_mobile_plugins');
delete_option('PO_disable_plugins');
delete_site_option('PO_disable_plugins');
delete_option('PO_plugin_order');
delete_site_option('PO_plugin_order');
delete_option('PO_default_group');
delete_site_option('PO_default_group');
delete_option('PO_alternate_admin');
delete_site_option('PO_alternate_admin');
delete_option('PO_network_active_plugins_color');
delete_site_option('PO_network_active_plugins_color');
delete_option('PO_enabled_mobile_search_groups');
delete_site_option('PO_enabled_mobile_search_groups');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'PO_enabled_mobile_pt_groups_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('PO_delete_missing_posts');
delete_site_transient('PO_delete_missing_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_group_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_group_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_group_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_group_members' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_enabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_enabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_enabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_enabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_disabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_disabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_disabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_disabled_mobile_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_enabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_enabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_enabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_enabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_disabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_disabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_disabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_disabled_plugins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_affect_children' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_affect_children' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_affect_children' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_affect_children' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_PO_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_PO_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_PO_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_PO_permalink' ) );

