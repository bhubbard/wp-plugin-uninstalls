<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwpd_version');
delete_site_option('cwpd_version');
delete_option('cwpd_wp_design');
delete_site_option('cwpd_wp_design');
delete_option('cwpd_setting_data');
delete_site_option('cwpd_setting_data');

