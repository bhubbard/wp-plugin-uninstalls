<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hiweb_plugins_server');
delete_site_option('hiweb_plugins_server');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'theme_mods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hiweb_settings_cyt2lat');
delete_site_option('hiweb_settings_cyt2lat');
delete_option('hiweb_settings_head_base');
delete_site_option('hiweb_settings_head_base');
delete_option('hiweb_cms_plugins_path');
delete_site_option('hiweb_cms_plugins_path');
delete_option('hiweb_cms_support_thumbnails');
delete_site_option('hiweb_cms_support_thumbnails');
delete_option('hiweb_cms_title');
delete_site_option('hiweb_cms_title');
delete_option('hiweb_cms_support_menus');
delete_site_option('hiweb_cms_support_menus');
delete_option('hiweb_cms_support_widgets');
delete_site_option('hiweb_cms_support_widgets');
delete_option('hiweb_cms_support_postformats');
delete_site_option('hiweb_cms_support_postformats');
delete_option('hiweb_cms_autochange_basedir');
delete_site_option('hiweb_cms_autochange_basedir');
delete_option('hiweb_cms_adminmenu_options');
delete_site_option('hiweb_cms_adminmenu_options');
delete_option('hiweb_settings_script_footer');
delete_site_option('hiweb_settings_script_footer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hiweb_cms_title_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hiweb_cms_title_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hiweb_cms_title_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hiweb_cms_title_mod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hiweb_cms_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hiweb_cms_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hiweb_cms_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hiweb_cms_title' ) );

