<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ovulationcalculator-group');
delete_site_option('ovulationcalculator-group');
delete_option('oc_period_result');
delete_site_option('oc_period_result');
delete_option('oc_fertile_result');
delete_site_option('oc_fertile_result');
delete_option('lang_ovulation_calc_BackupLink');
delete_site_option('lang_ovulation_calc_BackupLink');

