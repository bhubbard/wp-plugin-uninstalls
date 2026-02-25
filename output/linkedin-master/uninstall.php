<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkedin_master_system_wide');
delete_site_option('linkedin_master_system_wide');
delete_option('linkedin_master_system_wide_language');
delete_site_option('linkedin_master_system_wide_language');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

