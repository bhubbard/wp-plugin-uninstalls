<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_offset');
delete_site_option('social_offset');
delete_option('ubuntu-com_image');
delete_site_option('ubuntu-com_image');
delete_option('ubuntu-com_link');
delete_site_option('ubuntu-com_link');
delete_option('ubuntu-loco_image');
delete_site_option('ubuntu-loco_image');
delete_option('ubuntu-loco_link');
delete_site_option('ubuntu-loco_link');
delete_option('why-ubuntu_image');
delete_site_option('why-ubuntu_image');
delete_option('why-ubuntu_link');
delete_site_option('why-ubuntu_link');
delete_option('ubuntu-tour_image');
delete_site_option('ubuntu-tour_image');
delete_option('ubuntu-tour_link');
delete_site_option('ubuntu-tour_link');
delete_option('download-ubuntu_image');
delete_site_option('download-ubuntu_image');
delete_option('download-ubuntu_link');
delete_site_option('download-ubuntu_link');
delete_option('ubuntu-dvd_image');
delete_site_option('ubuntu-dvd_image');
delete_option('ubuntu-dvd_link');
delete_site_option('ubuntu-dvd_link');

