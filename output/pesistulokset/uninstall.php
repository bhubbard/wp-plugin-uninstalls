<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pesistulokset_api_key');
delete_site_option('pesistulokset_api_key');
delete_option('pesistulokset_enable_transients');
delete_site_option('pesistulokset_enable_transients');
delete_option('pesistulokset_transients_expire');
delete_site_option('pesistulokset_transients_expire');

