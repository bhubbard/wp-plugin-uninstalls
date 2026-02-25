<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsc_proofreader_info');
delete_site_option('wsc_proofreader_info');
delete_option('wsc');
delete_site_option('wsc');
delete_option('wsc_proofreader_version');
delete_site_option('wsc_proofreader_version');
delete_option('wsc_proofreader');
delete_site_option('wsc_proofreader');

