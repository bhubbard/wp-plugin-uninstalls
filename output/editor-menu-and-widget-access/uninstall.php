<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emwa_roles');
delete_site_option('emwa_roles');
delete_option('emwaAdminbar');
delete_site_option('emwaAdminbar');
delete_option('emwa_settings');
delete_site_option('emwa_settings');
delete_option('emwa_role_string');
delete_site_option('emwa_role_string');
delete_option('emwaHelp');
delete_site_option('emwaHelp');
delete_option('emwa_roles_cap_added');
delete_site_option('emwa_roles_cap_added');

