<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_mask_allow_styles_download');
delete_site_option('content_mask_allow_styles_download');
delete_option('content_mask_custom_styles_download');
delete_site_option('content_mask_custom_styles_download');
delete_option('content_mask_allow_scripts_download');
delete_site_option('content_mask_allow_scripts_download');
delete_option('content_mask_custom_scripts_download');
delete_site_option('content_mask_custom_scripts_download');
delete_option('content_mask_allow_footer_scripts_download');
delete_site_option('content_mask_allow_footer_scripts_download');
delete_option('content_mask_custom_footer_scripts_download');
delete_site_option('content_mask_custom_footer_scripts_download');
delete_option('content_mask_include_return_link');
delete_site_option('content_mask_include_return_link');
delete_option('content_mask_allow_standard_wp_head_iframe');
delete_site_option('content_mask_allow_standard_wp_head_iframe');
delete_option('content_mask_disable_iframe_title');
delete_site_option('content_mask_disable_iframe_title');
delete_option('content_mask_disable_iframe_query_parameter_identifier');
delete_site_option('content_mask_disable_iframe_query_parameter_identifier');
delete_option('content_mask_disable_iframe_query_parameter_passthrough');
delete_site_option('content_mask_disable_iframe_query_parameter_passthrough');
delete_option('content_mask_allow_styles_iframe');
delete_site_option('content_mask_allow_styles_iframe');
delete_option('content_mask_custom_styles_iframe');
delete_site_option('content_mask_custom_styles_iframe');
delete_option('content_mask_allow_scripts_iframe');
delete_site_option('content_mask_allow_scripts_iframe');
delete_option('content_mask_custom_scripts_iframe');
delete_site_option('content_mask_custom_scripts_iframe');
delete_option('content_mask_allow_footer_scripts_iframe');
delete_site_option('content_mask_allow_footer_scripts_iframe');
delete_option('content_mask_custom_footer_scripts_iframe');
delete_site_option('content_mask_custom_footer_scripts_iframe');
delete_option('content_mask_return_link_label');
delete_site_option('content_mask_return_link_label');
delete_option('content_mask_tracking');
delete_site_option('content_mask_tracking');
delete_option('content_mask_user_agent_header');
delete_site_option('content_mask_user_agent_header');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'content_mask_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('content_mask_user_agent');
delete_site_transient('content_mask_user_agent');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_role_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_role_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_role_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_role_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_condition_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_condition_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_condition_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_condition_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_header_scripts_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_header_scripts_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_header_scripts_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_header_scripts_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_footer_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_footer_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_footer_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_footer_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_mask_transient_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_mask_transient_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_mask_transient_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_mask_transient_expiration' ) );

