<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ald_options');
delete_site_option('ald_options');
delete_option('ald_wrapper_class');
delete_site_option('ald_wrapper_class');
delete_option('ald_load_class');
delete_site_option('ald_load_class');
delete_option('ald_item_show');
delete_site_option('ald_item_show');
delete_option('ald_item_load');
delete_site_option('ald_item_load');
delete_option('ald_load_label');
delete_site_option('ald_load_label');
delete_option('ald_wrapper_classa');
delete_site_option('ald_wrapper_classa');
delete_option('ald_load_classa');
delete_site_option('ald_load_classa');
delete_option('ald_item_showa');
delete_site_option('ald_item_showa');
delete_option('ald_item_loada');
delete_site_option('ald_item_loada');
delete_option('ald_load_labela');
delete_site_option('ald_load_labela');
delete_option('ald_wrapper_classb');
delete_site_option('ald_wrapper_classb');
delete_option('ald_load_classb');
delete_site_option('ald_load_classb');
delete_option('ald_item_showb');
delete_site_option('ald_item_showb');
delete_option('ald_item_loadb');
delete_site_option('ald_item_loadb');
delete_option('ald_load_labelb');
delete_site_option('ald_load_labelb');
delete_option('ald_wrapper_classc');
delete_site_option('ald_wrapper_classc');
delete_option('ald_load_classc');
delete_site_option('ald_load_classc');
delete_option('ald_item_showc');
delete_site_option('ald_item_showc');
delete_option('ald_item_loadc');
delete_site_option('ald_item_loadc');
delete_option('ald_load_labelc');
delete_site_option('ald_load_labelc');
delete_option('ald_wrapper_classd');
delete_site_option('ald_wrapper_classd');
delete_option('ald_load_classd');
delete_site_option('ald_load_classd');
delete_option('ald_item_showd');
delete_site_option('ald_item_showd');
delete_option('ald_item_loadd');
delete_site_option('ald_item_loadd');
delete_option('ald_load_labeld');
delete_site_option('ald_load_labeld');
delete_option('ald_wrapper_classe');
delete_site_option('ald_wrapper_classe');
delete_option('ald_load_classe');
delete_site_option('ald_load_classe');
delete_option('ald_item_showe');
delete_site_option('ald_item_showe');
delete_option('ald_item_loade');
delete_site_option('ald_item_loade');
delete_option('ald_load_labele');
delete_site_option('ald_load_labele');
delete_option('asr_ald_css_class');
delete_site_option('asr_ald_css_class');
delete_option('ald_old_options');
delete_site_option('ald_old_options');
delete_option('ald_installed');
delete_site_option('ald_installed');
delete_option('ald_plugin_version');
delete_site_option('ald_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs

