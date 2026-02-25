<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themexpo_installed');
delete_site_option('themexpo_installed');
delete_option('themexpo_version');
delete_site_option('themexpo_version');
delete_option('tx_setting_option_name');
delete_site_option('tx_setting_option_name');

