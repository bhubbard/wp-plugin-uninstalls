<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmc_mail_use_network_settings');
delete_site_option('wpmc_mail_use_network_settings');
delete_option('wpmc_mail_message');
delete_site_option('wpmc_mail_message');
delete_option('wpmc_one_email');
delete_site_option('wpmc_one_email');
delete_option('wpmc_one_use_network_settings');
delete_site_option('wpmc_one_use_network_settings');
delete_option('wpmc_two_use_network_settings');
delete_site_option('wpmc_two_use_network_settings');
delete_option('wpmc_three_use_network_settings');
delete_site_option('wpmc_three_use_network_settings');
delete_option('wpmc_five_use_network_settings');
delete_site_option('wpmc_five_use_network_settings');
delete_option('wpmc_six_use_network_settings');
delete_site_option('wpmc_six_use_network_settings');

