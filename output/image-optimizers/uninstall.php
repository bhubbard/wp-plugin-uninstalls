<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imop_setting_data');
delete_site_option('imop_setting_data');
delete_option('cwpd_setting_data');
delete_site_option('cwpd_setting_data');
delete_option('imop_wp_optimize');
delete_site_option('imop_wp_optimize');

