<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpeu_register_settings_fields');
delete_site_option('wpeu_register_settings_fields');
delete_option('site_admins');
delete_site_option('site_admins');

