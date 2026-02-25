<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('izcrmef_app_conf');
delete_site_option('izcrmef_app_conf');
delete_option('izcrmef_db_version');
delete_site_option('izcrmef_db_version');
delete_option('izcrmef_installed');
delete_site_option('izcrmef_installed');
delete_option('izcrmef_version');
delete_site_option('izcrmef_version');
delete_option('btcbi_elementor_test');
delete_site_option('btcbi_elementor_test');

