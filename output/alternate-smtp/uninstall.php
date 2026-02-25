<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bvsmtp_smpt_global_settings');
delete_site_option('bvsmtp_smpt_global_settings');
delete_option('bvopt_smpt_alt_setting_1');
delete_site_option('bvopt_smpt_alt_setting_1');
delete_option('bvsmtp_smpt_alt_setting_2');
delete_site_option('bvsmtp_smpt_alt_setting_2');
delete_option('bvsmtp_smpt_alt_setting_3');
delete_site_option('bvsmtp_smpt_alt_setting_3');
delete_option('bvsmtp_smpt_alt_setting_1');
delete_site_option('bvsmtp_smpt_alt_setting_1');

