<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jfs_duration');
delete_site_option('jfs_duration');
delete_option('jfs_button');
delete_site_option('jfs_button');
delete_option('jfs_arrows');
delete_site_option('jfs_arrows');
delete_option('jfs_image_1');
delete_site_option('jfs_image_1');
delete_option('jfs_image_2');
delete_site_option('jfs_image_2');
delete_option('jfs_image_3');
delete_site_option('jfs_image_3');
delete_option('jfs_image_4');
delete_site_option('jfs_image_4');
delete_option('jfs_image_5');
delete_site_option('jfs_image_5');
delete_option('jfs_image_6');
delete_site_option('jfs_image_6');
delete_option('jfs_image_7');
delete_site_option('jfs_image_7');
delete_option('jfs_image_8');
delete_site_option('jfs_image_8');
delete_option('jfs_image_9');
delete_site_option('jfs_image_9');
delete_option('jfs_image_10');
delete_site_option('jfs_image_10');
delete_option('jfs_opacity');
delete_site_option('jfs_opacity');

