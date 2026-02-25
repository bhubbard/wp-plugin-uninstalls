<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple-rate-time');
delete_site_option('simple-rate-time');
delete_option('scporder_options');
delete_site_option('scporder_options');
delete_option('scporder_install');
delete_site_option('scporder_install');
delete_option('scporder_notice');
delete_site_option('scporder_notice');

