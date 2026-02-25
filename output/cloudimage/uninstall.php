<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cloudimage_new_version');
delete_site_option('cloudimage_new_version');
delete_option('cloudimage');
delete_site_option('cloudimage');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cloudimage_token_cname');
delete_site_option('cloudimage_token_cname');
delete_option('cloudimage_use_origin_url');
delete_site_option('cloudimage_use_origin_url');
delete_option('cloudimage_lazy_loading');
delete_site_option('cloudimage_lazy_loading');
delete_option('cloudimage_ignore_svg');
delete_site_option('cloudimage_ignore_svg');
delete_option('cloudimage_prevent_image_upsize');
delete_site_option('cloudimage_prevent_image_upsize');
delete_option('cloudimage_image_quality');
delete_site_option('cloudimage_image_quality');
delete_option('cloudimage_maximum_pixel_ratio');
delete_site_option('cloudimage_maximum_pixel_ratio');
delete_option('cloudimage_remove_v7');
delete_site_option('cloudimage_remove_v7');
delete_option('cloudimage_image_size_attributes');
delete_site_option('cloudimage_image_size_attributes');
delete_option('cloudimage_custom_function');
delete_site_option('cloudimage_custom_function');
delete_option('cloudimage_custom_library');
delete_site_option('cloudimage_custom_library');
delete_option('cloudimage_skip_classes');
delete_site_option('cloudimage_skip_classes');
delete_option('cloudimage_skip_files');
delete_site_option('cloudimage_skip_files');
delete_option('cloudimage_local_javascript_libraries');
delete_site_option('cloudimage_local_javascript_libraries');
delete_option('cloudimage_standard_mode');
delete_site_option('cloudimage_standard_mode');
delete_option('cloudimage_url_signature');
delete_site_option('cloudimage_url_signature');
delete_option('cloudimage_enable_srcset');
delete_site_option('cloudimage_enable_srcset');
delete_option('cloudimage_srcset_widths');
delete_site_option('cloudimage_srcset_widths');

