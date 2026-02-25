<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spoton_call_tracking');
delete_site_option('spoton_call_tracking');
delete_option('spoton_activate_hooks');
delete_site_option('spoton_activate_hooks');
delete_option('spoton_activate_forms');
delete_site_option('spoton_activate_forms');
delete_option('spoton_key');
delete_site_option('spoton_key');
delete_option('spoton_exclude_forms');
delete_site_option('spoton_exclude_forms');

