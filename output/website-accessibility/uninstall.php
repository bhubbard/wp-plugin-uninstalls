<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdt_biggopti_dismissals');
delete_site_option('bdt_biggopti_dismissals');
delete_option('websac_settings');
delete_site_option('websac_settings');
delete_option('websac_version');
delete_site_option('websac_version');
delete_option('websac_installed_time');
delete_site_option('websac_installed_time');
delete_option('websac_do_activation_redirect');
delete_site_option('websac_do_activation_redirect');

