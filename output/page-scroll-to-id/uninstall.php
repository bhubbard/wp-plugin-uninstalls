<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps2id_plugin_admin_notice_dismiss_notice');
delete_site_option('ps2id_plugin_admin_notice_dismiss_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%instances' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('malihu_pagescroll2id_sel');
delete_site_option('malihu_pagescroll2id_sel');
delete_option('malihu_pagescroll2id_scrollSpeed');
delete_site_option('malihu_pagescroll2id_scrollSpeed');
delete_option('malihu_pagescroll2id_autoScrollSpeed');
delete_site_option('malihu_pagescroll2id_autoScrollSpeed');
delete_option('malihu_pagescroll2id_scrollEasing');
delete_site_option('malihu_pagescroll2id_scrollEasing');
delete_option('malihu_pagescroll2id_scrollingEasing');
delete_site_option('malihu_pagescroll2id_scrollingEasing');
delete_option('malihu_pagescroll2id_pageEndSmoothScroll');
delete_site_option('malihu_pagescroll2id_pageEndSmoothScroll');
delete_option('malihu_pagescroll2id_layout');
delete_site_option('malihu_pagescroll2id_layout');

