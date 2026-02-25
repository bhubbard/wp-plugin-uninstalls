<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('integrate_clientify');
delete_site_option('integrate_clientify');
delete_option('integration_clientify');
delete_site_option('integration_clientify');

