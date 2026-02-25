<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_aioseop_nags_custom_css');
delete_site_option('no_aioseop_nags_custom_css');
delete_option('no_aioseop_nags_custom_css-checkbox');
delete_site_option('no_aioseop_nags_custom_css-checkbox');
delete_option('no_aioseop_nags_your_custom_css');
delete_site_option('no_aioseop_nags_your_custom_css');
delete_option('no_aioseop_nags_your_custom-checkbox');
delete_site_option('no_aioseop_nags_your_custom-checkbox');
delete_option('no_aioseop_nags_menu-checkbox');
delete_site_option('no_aioseop_nags_menu-checkbox');
delete_option('no_aioseop_nags_yoast');
delete_site_option('no_aioseop_nags_yoast');
delete_option('no_aioseop_nags_all_messages');
delete_site_option('no_aioseop_nags_all_messages');
delete_option('abl_no_aioseop_nags_version');
delete_site_option('abl_no_aioseop_nags_version');
delete_option('dismissed-prefix_deprecated');
delete_site_option('dismissed-prefix_deprecated');

