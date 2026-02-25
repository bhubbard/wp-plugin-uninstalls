<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmultilingial_settings');
delete_site_option('wpmultilingial_settings');
delete_option('poliglot_install');
delete_site_option('poliglot_install');
delete_option('update_core');
delete_site_option('update_core');

