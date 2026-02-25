<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widgetopts_editor_cached');
delete_site_option('widgetopts_editor_cached');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widgetopts_installDate');
delete_site_option('widgetopts_installDate');
delete_option('widgetopts_RatingDiv');
delete_site_option('widgetopts_RatingDiv');
delete_option('widgetopts_free_license');
delete_site_option('widgetopts_free_license');
delete_option('widgetopts_settings');
delete_site_option('widgetopts_settings');
delete_option('widgetopts_tabmodule-settings');
delete_site_option('widgetopts_tabmodule-settings');
delete_option('widgetopts_tabmodule-visibility');
delete_site_option('widgetopts_tabmodule-visibility');
delete_option('widgetopts_tabmodule-devices');
delete_site_option('widgetopts_tabmodule-devices');
delete_option('widgetopts_tabmodule-alignment');
delete_site_option('widgetopts_tabmodule-alignment');
delete_option('widgetopts_tabmodule-hide_title');
delete_site_option('widgetopts_tabmodule-hide_title');
delete_option('widgetopts_tabmodule-classes');
delete_site_option('widgetopts_tabmodule-classes');
delete_option('widgetopts_tabmodule-logic');
delete_site_option('widgetopts_tabmodule-logic');
delete_option('widgetopts_tabmodule-siteorigin');
delete_site_option('widgetopts_tabmodule-siteorigin');
delete_option('widgetopts_tabmodule-search');
delete_site_option('widgetopts_tabmodule-search');
delete_option('widgetopts_tabmodule-move');
delete_site_option('widgetopts_tabmodule-move');
delete_option('widgetopts_tabmodule-elementor');
delete_site_option('widgetopts_tabmodule-elementor');
delete_option('widgetopts_tabmodule-widget_area');
delete_site_option('widgetopts_tabmodule-widget_area');
delete_option('widgetopts_tabmodule-import_export');
delete_site_option('widgetopts_tabmodule-import_export');
delete_option('widgetopts_tabmodule-beaver');
delete_site_option('widgetopts_tabmodule-beaver');
delete_option('widgetopts_tabmodule-acf');
delete_site_option('widgetopts_tabmodule-acf');
delete_option('widgetopts_tabmodule-state');
delete_site_option('widgetopts_tabmodule-state');
delete_option('widgetopts_tabmodule-classic_widgets_screen');
delete_site_option('widgetopts_tabmodule-classic_widgets_screen');
delete_option('widgetopts_tabmodule-hide_page_and_post_block');
delete_site_option('widgetopts_tabmodule-hide_page_and_post_block');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widgetopts_tabmodule-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widgetopts_license_keys');
delete_site_option('widgetopts_license_keys');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widgetopts_upgrade');
delete_site_option('widgetopts_upgrade');
delete_option('widgetopts_global_taxonomies');
delete_site_option('widgetopts_global_taxonomies');
delete_option('widgetopts_global_all_pages');
delete_site_option('widgetopts_global_all_pages');
delete_option('widgetopts_global_categories');
delete_site_option('widgetopts_global_categories');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('_widgetopts_default_registered_');
delete_site_option('_widgetopts_default_registered_');
delete_option('extwopts_class_settings');
delete_site_option('extwopts_class_settings');
delete_option('widgetopts_removed_global_pages');
delete_site_option('widgetopts_removed_global_pages');
delete_option('widgetopts_global_pages');
delete_site_option('widgetopts_global_pages');
delete_option('widgetopts_global_types');
delete_site_option('widgetopts_global_types');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('extwopts_taxonomy_settings');
delete_site_option('extwopts_taxonomy_settings');

// Delete Transients
delete_transient('widgetopts_tabs_transient');
delete_site_transient('widgetopts_tabs_transient');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_widgetopts_taxonomy_%', '_site_transient_widgetopts_taxonomy_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

