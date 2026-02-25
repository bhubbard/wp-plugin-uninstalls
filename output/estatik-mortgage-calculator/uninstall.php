<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('estatik_calculator_settings');
delete_site_option('estatik_calculator_settings');
delete_option('estatik_calculator_settings_migrated');
delete_site_option('estatik_calculator_settings_migrated');
delete_option('emc_options');
delete_site_option('emc_options');

