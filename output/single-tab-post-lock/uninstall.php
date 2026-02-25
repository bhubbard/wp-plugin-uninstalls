<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('singtapo_do_activation_redirect');
delete_site_option('singtapo_do_activation_redirect');
delete_option('singtapo_settings');
delete_site_option('singtapo_settings');

