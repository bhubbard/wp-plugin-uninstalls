<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instagram_master_system_wide');
delete_site_option('instagram_master_system_wide');
delete_option('instagram_master_system_wide_username');
delete_site_option('instagram_master_system_wide_username');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

