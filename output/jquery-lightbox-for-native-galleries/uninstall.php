<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('viper-jquery-lightbox_settings');
delete_site_option('viper-jquery-lightbox_settings');

