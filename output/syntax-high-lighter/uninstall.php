<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('melibuPlugin_get_syntaxhighlighter_shema');
delete_site_option('melibuPlugin_get_syntaxhighlighter_shema');
delete_option('melibuPlugin_get_syntaxhighlighter_css');
delete_site_option('melibuPlugin_get_syntaxhighlighter_css');
delete_option('melibuPlugin_get_syntaxhighlighter_regexp');
delete_site_option('melibuPlugin_get_syntaxhighlighter_regexp');
delete_option('melibuPlugin_get_syntaxhighlighter_regexp_settings');
delete_site_option('melibuPlugin_get_syntaxhighlighter_regexp_settings');
delete_option('melibuPlugin_get_syntaxhighlighter_options');
delete_site_option('melibuPlugin_get_syntaxhighlighter_options');
delete_option('melibuPlugin_get_syntaxhighlighter_colors');
delete_site_option('melibuPlugin_get_syntaxhighlighter_colors');
delete_option('melibuPlugin_get_syntaxhighlighter_colors_activate');
delete_site_option('melibuPlugin_get_syntaxhighlighter_colors_activate');
delete_option('melibuPlugin_syntaxhighlighter_get_syntax_copy');
delete_site_option('melibuPlugin_syntaxhighlighter_get_syntax_copy');
delete_option('melibu-plugin-syntax-version');
delete_site_option('melibu-plugin-syntax-version');
delete_option('melibu-plugin-syntax-db-version');
delete_site_option('melibu-plugin-syntax-db-version');
delete_option('melibu_plugin_get_syntaxhighlighter_regexp_setting');
delete_site_option('melibu_plugin_get_syntaxhighlighter_regexp_setting');
delete_option('melibu-plugin-syntax-logo-get');
delete_site_option('melibu-plugin-syntax-logo-get');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'melibu_syntax_post_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('melibuPlugin_get_syntaxhighlihter_shema');
delete_site_option('melibuPlugin_get_syntaxhighlihter_shema');
delete_option('mb-author-box-get-setting-group');
delete_site_option('mb-author-box-get-setting-group');

// Delete Transients
delete_transient('melibu-plugin-syntax-page-activated');
delete_site_transient('melibu-plugin-syntax-page-activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'melibu_syntax_post_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'melibu_syntax_post_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'melibu_syntax_post_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'melibu_syntax_post_current' ) );

