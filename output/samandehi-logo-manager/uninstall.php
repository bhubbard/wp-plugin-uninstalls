<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Samandehi_Logo');
delete_site_option('Samandehi_Logo');
delete_option('Samandehi_new_ver_notice_applied_0_2');
delete_site_option('Samandehi_new_ver_notice_applied_0_2');
delete_option('Samandehi_logo');
delete_site_option('Samandehi_logo');

