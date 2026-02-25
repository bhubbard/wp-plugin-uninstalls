<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wis_scrapper_pack_passcount');
delete_site_option('wis_scrapper_pack_passcount');
delete_option('wis_scrapper_add1_passcount');
delete_site_option('wis_scrapper_add1_passcount');
delete_option('wis_scrapper_add1_clicked');
delete_site_option('wis_scrapper_add1_clicked');
delete_option('wis_scrapper_options');
delete_site_option('wis_scrapper_options');
delete_option('wis_backup_version_plugin');
delete_site_option('wis_backup_version_plugin');
delete_option('wis_backup_package_active');
delete_site_option('wis_backup_package_active');
delete_option('wis_backup_settings');
delete_site_option('wis_backup_settings');

