<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yp_purchase_code');
delete_site_option('yp_purchase_code');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_css' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wt_css');
delete_site_option('wt_css');
delete_option('yp-output-option');
delete_site_option('yp-output-option');
delete_option('yp-draft-mode');
delete_site_option('yp-draft-mode');
delete_option('yp-default-global');
delete_site_option('yp-default-global');
delete_option('wt_search_css');
delete_site_option('wt_search_css');
delete_option('wt_tag_css');
delete_site_option('wt_tag_css');
delete_option('wt_category_css');
delete_site_option('wt_category_css');
delete_option('wt_archive_css');
delete_site_option('wt_archive_css');
delete_option('wt_author_css');
delete_site_option('wt_author_css');
delete_option('wt_404_css');
delete_site_option('wt_404_css');
delete_option('wt_home_css');
delete_site_option('wt_home_css');
delete_option('wt_login_css');
delete_site_option('wt_login_css');
delete_option('wt_register_css');
delete_site_option('wt_register_css');
delete_option('wt_lostpassword_css');
delete_site_option('wt_lostpassword_css');
delete_option('yp_selector_comments');
delete_site_option('yp_selector_comments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yp_anim_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yp_op_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wt_styles');
delete_site_option('wt_styles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_styles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yp_new_custom_CSS_dir');
delete_site_option('yp_new_custom_CSS_dir');
delete_option('yp_700_db_updateX');
delete_site_option('yp_700_db_updateX');
delete_option('yp_live_view_css_data');
delete_site_option('yp_live_view_css_data');
delete_option('wt_author_styles');
delete_site_option('wt_author_styles');
delete_option('wt_tag_styles');
delete_site_option('wt_tag_styles');
delete_option('wt_category_styles');
delete_site_option('wt_category_styles');
delete_option('wt_archive_styles');
delete_site_option('wt_archive_styles');
delete_option('wt_404_styles');
delete_site_option('wt_404_styles');
delete_option('wt_search_styles');
delete_site_option('wt_search_styles');
delete_option('wt_home_styles');
delete_site_option('wt_home_styles');
delete_option('yp_revisions');
delete_site_option('yp_revisions');

// Delete Transients
delete_transient('wyp_plugin_active_notice');
delete_site_transient('wyp_plugin_active_notice');
delete_transient('wyp_welcome_screen_activation_redirect');
delete_site_transient('wyp_welcome_screen_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wt_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wt_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wt_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wt_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wt_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wt_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wt_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wt_styles' ) );

