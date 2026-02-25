<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rio_settings');
delete_site_option('rio_settings');
delete_option('lang_emi_calc_BackupLink');
delete_site_option('lang_emi_calc_BackupLink');
delete_option('lang_emi_calc_BackupText');
delete_site_option('lang_emi_calc_BackupText');

