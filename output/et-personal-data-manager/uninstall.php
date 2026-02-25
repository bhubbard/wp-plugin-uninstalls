<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('et_personal_data_manager_installed');
delete_site_option('et_personal_data_manager_installed');
delete_option('et_personal_data_manager_version');
delete_site_option('et_personal_data_manager_version');

