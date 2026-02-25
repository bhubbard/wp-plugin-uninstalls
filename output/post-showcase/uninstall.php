<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pshowcase_settings');
delete_site_option('pshowcase_settings');
delete_option('pshowcase_version');
delete_site_option('pshowcase_version');
delete_option('pshowcase_flash_notices');
delete_site_option('pshowcase_flash_notices');

