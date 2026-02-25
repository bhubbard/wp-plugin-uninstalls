<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scporder_install');
delete_site_option('scporder_install');
delete_option('scporder_notice');
delete_site_option('scporder_notice');
delete_option('dupo_install');
delete_site_option('dupo_install');
delete_option('scporder_options');
delete_site_option('scporder_options');

