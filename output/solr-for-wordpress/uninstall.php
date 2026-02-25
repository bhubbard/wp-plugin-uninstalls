<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_s4w_settings');
delete_site_option('plugin_s4w_settings');
delete_option('s4w_index_all_sites');
delete_site_option('s4w_index_all_sites');

