<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sya_dateformatchanged2012');
delete_site_option('sya_dateformatchanged2012');
delete_option('sya_dateformatchanged2015');
delete_site_option('sya_dateformatchanged2015');
delete_option('sya_dateformat');
delete_site_option('sya_dateformat');
delete_option('sya_datetitleseperator');
delete_site_option('sya_datetitleseperator');
delete_option('sya_linkyears');
delete_site_option('sya_linkyears');
delete_option('sya_collapseyears');
delete_site_option('sya_collapseyears');
delete_option('sya_postcount');
delete_site_option('sya_postcount');
delete_option('sya_commentcount');
delete_site_option('sya_commentcount');
delete_option('sya_linktoauthor');
delete_site_option('sya_linktoauthor');
delete_option('sya_reverseorder');
delete_site_option('sya_reverseorder');
delete_option('sya_prepend');
delete_site_option('sya_prepend');
delete_option('sya_append');
delete_site_option('sya_append');
delete_option('sya_excerpt');
delete_site_option('sya_excerpt');
delete_option('sya_excerpt_indent');
delete_site_option('sya_excerpt_indent');
delete_option('sya_excerpt_maxchars');
delete_site_option('sya_excerpt_maxchars');
delete_option('sya_show_categories');
delete_site_option('sya_show_categories');
delete_option('sya_show_tags');
delete_site_option('sya_show_tags');
delete_option('sya_showauthor');
delete_site_option('sya_showauthor');
delete_option('sya_showyearoverview');
delete_site_option('sya_showyearoverview');
delete_option('sya_showpostthumbnail');
delete_site_option('sya_showpostthumbnail');
delete_option('sya_postthumbnail_size');
delete_site_option('sya_postthumbnail_size');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

