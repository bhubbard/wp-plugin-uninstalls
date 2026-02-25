<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfdb_form_notifier_api_key');
delete_site_option('cfdb_form_notifier_api_key');
delete_option('cfdb_form_notifier_dev_mode');
delete_site_option('cfdb_form_notifier_dev_mode');
delete_option('cfdb_form_notifier_version');
delete_site_option('cfdb_form_notifier_version');
delete_option('cfdb_form_notifier_menu_roles');
delete_site_option('cfdb_form_notifier_menu_roles');

