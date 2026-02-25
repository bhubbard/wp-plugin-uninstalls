<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abwp_eym_plugin_version');
delete_site_option('abwp_eym_plugin_version');
delete_option('abwp_eym_token');
delete_site_option('abwp_eym_token');
delete_option('abwp_eym_counter_id');
delete_site_option('abwp_eym_counter_id');

