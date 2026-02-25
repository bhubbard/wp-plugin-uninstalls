<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_preloader_image');
delete_site_option('ss_preloader_image');
delete_option('ss_preloader_color');
delete_site_option('ss_preloader_color');
delete_option('ss_preloader_opacity');
delete_site_option('ss_preloader_opacity');

