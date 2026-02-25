<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remotemonkey_options');
delete_site_option('remotemonkey_options');
delete_option('remotemonkey_do_activation_redirect');
delete_site_option('remotemonkey_do_activation_redirect');
delete_option('bm_remotemonkey');
delete_site_option('bm_remotemonkey');
delete_option('akeebabackupwp_config');
delete_site_option('akeebabackupwp_config');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

