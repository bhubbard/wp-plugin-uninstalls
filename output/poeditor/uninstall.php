<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poeditor_apikey');
delete_site_option('poeditor_apikey');
delete_option('poeditor_projects');
delete_site_option('poeditor_projects');
delete_option('poeditor_files');
delete_site_option('poeditor_files');
delete_option('poeditor_languages');
delete_site_option('poeditor_languages');
delete_option('poeditor_assingments');
delete_site_option('poeditor_assingments');
delete_option('poeditor_flash_messages');
delete_site_option('poeditor_flash_messages');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

