<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynco_manager_role_option');
delete_site_option('dynco_manager_role_option');
delete_option('dynco_support_svg_option');
delete_site_option('dynco_support_svg_option');
delete_option('dynco_meta_information_option');
delete_site_option('dynco_meta_information_option');
delete_option('dynco_remove_generator_filter_option');
delete_site_option('dynco_remove_generator_filter_option');
delete_option('dynco_disallow_file_edit_option');
delete_site_option('dynco_disallow_file_edit_option');
delete_option('dynco_remove_dashboard_widgets_option');
delete_site_option('dynco_remove_dashboard_widgets_option');
delete_option('dynco_added_dashboard_widgets_option');
delete_site_option('dynco_added_dashboard_widgets_option');
delete_option('dynco_mapped_domains_redirect_option');
delete_site_option('dynco_mapped_domains_redirect_option');
delete_option('dynco_extra_shortcodes_option');
delete_site_option('dynco_extra_shortcodes_option');
delete_option('dynco_search_all_option');
delete_site_option('dynco_search_all_option');
delete_option('dynco_suppress_vc_update_alert_option');
delete_site_option('dynco_suppress_vc_update_alert_option');
delete_option('dynco_suppress_auto_update_option');
delete_site_option('dynco_suppress_auto_update_option');
delete_option('dynco_hide_admin_bar_option');
delete_site_option('dynco_hide_admin_bar_option');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dynco_search_all_option_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dynco_add_dashboard_comments_option');
delete_site_option('dynco_add_dashboard_comments_option');

