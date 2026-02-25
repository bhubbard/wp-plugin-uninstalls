<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shtm_hidden_tests');
delete_site_option('shtm_hidden_tests');
delete_option('shtm_widget_enabled');
delete_site_option('shtm_widget_enabled');

