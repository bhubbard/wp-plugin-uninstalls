<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anyclip_platform_ui');
delete_site_option('anyclip_platform_ui');
delete_option('anyclip_platform_api');
delete_site_option('anyclip_platform_api');

