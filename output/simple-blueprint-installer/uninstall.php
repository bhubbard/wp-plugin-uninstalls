<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbi_do_activation_redirect');
delete_site_option('sbi_do_activation_redirect');
delete_option('sbi_plugins_blueprint');
delete_site_option('sbi_plugins_blueprint');

