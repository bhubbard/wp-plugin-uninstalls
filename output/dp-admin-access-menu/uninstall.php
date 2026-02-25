<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpama_settings');
delete_site_option('dpama_settings');
delete_option('dpama_superadmin_id');
delete_site_option('dpama_superadmin_id');

