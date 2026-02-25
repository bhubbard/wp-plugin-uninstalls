<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codecolorer_language_notification');
delete_site_option('codecolorer_language_notification');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notification' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('codecolorer_lines_to_scroll');
delete_site_option('codecolorer_lines_to_scroll');
delete_option('codecolorer_width');
delete_site_option('codecolorer_width');
delete_option('codecolorer_height');
delete_site_option('codecolorer_height');
delete_option('codecolorer_rss_width');
delete_site_option('codecolorer_rss_width');
delete_option('codecolorer_tab_size');
delete_site_option('codecolorer_tab_size');
delete_option('codecolorer_theme');
delete_site_option('codecolorer_theme');
delete_option('codecolorer_inline_theme');
delete_site_option('codecolorer_inline_theme');
delete_option('codecolorer_line_numbers');
delete_site_option('codecolorer_line_numbers');
delete_option('codecolorer_disable_keyword_linking');
delete_site_option('codecolorer_disable_keyword_linking');
delete_option('codecolorer_css_class');
delete_site_option('codecolorer_css_class');
delete_option('codecolorer_css_style');
delete_site_option('codecolorer_css_style');
delete_option('codecolorer_concurrent_notification');
delete_site_option('codecolorer_concurrent_notification');

