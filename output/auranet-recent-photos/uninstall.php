<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aura_recent_photos_user');
delete_site_option('aura_recent_photos_user');
delete_option('aura_recent_photos_total_images');
delete_site_option('aura_recent_photos_total_images');
delete_option('aura_recent_photos_backcolor');
delete_site_option('aura_recent_photos_backcolor');
delete_option('aura_recent_photos_img_width');
delete_site_option('aura_recent_photos_img_width');
delete_option('aura_recent_photos_img_border');
delete_site_option('aura_recent_photos_img_border');
delete_option('aura_recent_photos_border_color');
delete_site_option('aura_recent_photos_border_color');
delete_option('aura_recent_photos_img_space');
delete_site_option('aura_recent_photos_img_space');

