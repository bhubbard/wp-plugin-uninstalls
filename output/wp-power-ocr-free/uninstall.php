<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpo_language');
delete_site_option('wpo_language');
delete_option('wpo_username');
delete_site_option('wpo_username');
delete_option('wpo_licence_code');
delete_site_option('wpo_licence_code');

