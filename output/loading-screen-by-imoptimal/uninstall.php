<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imoload_settings');
delete_site_option('imoload_settings');
delete_option('imoload_meta');
delete_site_option('imoload_meta');

