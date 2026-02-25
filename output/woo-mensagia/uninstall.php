<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MENSAGIA_LOGIN_EMAIL');
delete_site_option('MENSAGIA_LOGIN_EMAIL');
delete_option('MENSAGIA_LOGIN_PASSWORD');
delete_site_option('MENSAGIA_LOGIN_PASSWORD');
delete_option('MENSAGIA_AUTHENTICATED');
delete_site_option('MENSAGIA_AUTHENTICATED');
delete_option('MENSAGIA_PREFIX_MODE');
delete_site_option('MENSAGIA_PREFIX_MODE');
delete_option('MENSAGIA_API_CONFIGURATION');
delete_site_option('MENSAGIA_API_CONFIGURATION');
delete_option('mensagiasms_jal_db_version');
delete_site_option('mensagiasms_jal_db_version');
delete_option('MensagiaWPAdminNotices');
delete_site_option('MensagiaWPAdminNotices');

