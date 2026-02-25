<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atcb_global_settings');
delete_site_option('atcb_global_settings');

// Delete Transients
delete_transient('atcb_load_script_once');
delete_site_transient('atcb_load_script_once');

