<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-extended-modules');
delete_site_option('wp-extended-modules');
delete_option('wpextended__notices');
delete_site_option('wpextended__notices');
delete_option('wpextended_activation_time');
delete_site_option('wpextended_activation_time');
delete_option('wpextended_version');
delete_site_option('wpextended_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpext_license_key');
delete_site_option('wpext_license_key');
delete_option('wpext_lisence-status');
delete_site_option('wpext_lisence-status');
delete_option('wpext_lisence_success');
delete_site_option('wpext_lisence_success');
delete_option('wpext_lisence-success');
delete_site_option('wpext_lisence-success');
delete_option('wpext_plugin_reset_action');
delete_site_option('wpext_plugin_reset_action');
delete_option('wpext_show_plugin_menu_action');
delete_site_option('wpext_show_plugin_menu_action');
delete_option('wpext_admin_menu_favorite');
delete_site_option('wpext_admin_menu_favorite');
delete_option('wpext_admin_column_fields_users');
delete_site_option('wpext_admin_column_fields_users');
delete_option('wpext_admin_column_fields_comments');
delete_site_option('wpext_admin_column_fields_comments');
delete_option('wpext_admin_column_fields_media');
delete_site_option('wpext_admin_column_fields_media');
delete_option('wpext-admin-column');
delete_site_option('wpext-admin-column');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpext_admin_column_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpext_admin_color');
delete_site_option('wpext_admin_color');
delete_option('wpext-block-username-tag');
delete_site_option('wpext-block-username-tag');
delete_option('wpext-disable_gutenberg_editor');
delete_site_option('wpext-disable_gutenberg_editor');
delete_option('wpext-disable-dashboard-widget');
delete_site_option('wpext-disable-dashboard-widget');
delete_option('wpext_clean_admin_dashboard');
delete_site_option('wpext_clean_admin_dashboard');
delete_option('wpext-user-sections-toggle');
delete_site_option('wpext-user-sections-toggle');
delete_option('wpext-user-sections');
delete_site_option('wpext-user-sections');
delete_option('wpext-snippets');
delete_site_option('wpext-snippets');
delete_option('wpext-change-wp-admin-default-url');
delete_site_option('wpext-change-wp-admin-default-url');
delete_option('wpext-external-permalink-url');
delete_site_option('wpext-external-permalink-url');
delete_option('wpext-hide_admin_bar');
delete_site_option('wpext-hide_admin_bar');
delete_option('wpext-notices-config');
delete_site_option('wpext-notices-config');
delete_option('wpext-user-login-attempt-config');
delete_site_option('wpext-user-login-attempt-config');
delete_option('login_attempts');
delete_site_option('login_attempts');
delete_option('lockout_time');
delete_site_option('lockout_time');
delete_option('wpext-maintanance_mode');
delete_site_option('wpext-maintanance_mode');
delete_option('wpextended_menu-editor');
delete_site_option('wpextended_menu-editor');
delete_option('wpext-user-tidy-nav');
delete_site_option('wpext-user-tidy-nav');
delete_option('wpext-user-tidy-nav-store-user-id');
delete_site_option('wpext-user-tidy-nav-store-user-id');
delete_option('wpext-user-tidy-nav-store-user-role');
delete_site_option('wpext-user-tidy-nav-store-user-role');
delete_option('wpext_seprate_superadmin');
delete_site_option('wpext_seprate_superadmin');
delete_option('wpext-hide-menu-main');
delete_site_option('wpext-hide-menu-main');
delete_option('wpext-pixel-tag');
delete_site_option('wpext-pixel-tag');
delete_option('wpext-post-type-order');
delete_site_option('wpext-post-type-order');
delete_option('quick-replace-feature-image');
delete_site_option('quick-replace-feature-image');
delete_option('wpext_smtp_from_name');
delete_site_option('wpext_smtp_from_name');
delete_option('wpext_smtp_from_email');
delete_site_option('wpext_smtp_from_email');
delete_option('wpext_smtp_host');
delete_site_option('wpext_smtp_host');
delete_option('wpext_smtp_port');
delete_site_option('wpext_smtp_port');
delete_option('wpext_smtp_username');
delete_site_option('wpext_smtp_username');
delete_option('wpext_smtp_password');
delete_site_option('wpext_smtp_password');
delete_option('wpext_disable_email_Log');
delete_site_option('wpext_disable_email_Log');
delete_option('smtp_post_number');
delete_site_option('smtp_post_number');

// Delete Transients
delete_transient('snippets_deleted');
delete_site_transient('snippets_deleted');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_code_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_code_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_code_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_code_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_active' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_code_sesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_code_sesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_code_sesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_code_sesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_scope' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_scope' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_scope' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_scope' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'snippet_executed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'snippet_executed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'snippet_executed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'snippet_executed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_page_assets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_page_assets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_page_assets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_page_assets' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_links_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_links_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_links_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_links_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpext_menu_item_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpext_menu_item_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpext_menu_item_visible' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpext_menu_item_visible' ) );

