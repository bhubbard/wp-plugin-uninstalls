<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ht_fba_options');
delete_site_option('ht_fba_options');
delete_option('ht_fba_plugin_details');
delete_site_option('ht_fba_plugin_details');

