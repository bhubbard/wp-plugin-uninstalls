<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yydev_tag_mangage_wp_body_open');
delete_site_option('yydev_tag_mangage_wp_body_open');
delete_option('yydev_tagmanager_main_menu');
delete_site_option('yydev_tagmanager_main_menu');
delete_option('yydev_stop_plugins_notice');
delete_site_option('yydev_stop_plugins_notice');

