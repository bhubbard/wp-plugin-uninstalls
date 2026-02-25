<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csa_settings');
delete_site_option('csa_settings');
delete_option('display_days');
delete_site_option('display_days');

