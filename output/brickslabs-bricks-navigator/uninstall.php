<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brickslabs_bricks_navigator_show_in_editor');
delete_site_option('brickslabs_bricks_navigator_show_in_editor');
delete_option('brickslabs_bricks_navigator_show_community_menu');
delete_site_option('brickslabs_bricks_navigator_show_community_menu');
delete_option('brickslabs_bricks_navigator_show_thirdparty_plugins');
delete_site_option('brickslabs_bricks_navigator_show_thirdparty_plugins');
delete_option('brickslabs_bricks_navigator_show_bricks_internal');
delete_site_option('brickslabs_bricks_navigator_show_bricks_internal');
delete_option('brickslabs_bricks_navigator_show_bricks_external');
delete_site_option('brickslabs_bricks_navigator_show_bricks_external');

