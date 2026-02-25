<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcustompreloader_bg_color');
delete_site_option('wpcustompreloader_bg_color');
delete_option('wpcustompreloader_image');
delete_site_option('wpcustompreloader_image');
delete_option('wpcustompreloader_screen');
delete_site_option('wpcustompreloader_screen');

