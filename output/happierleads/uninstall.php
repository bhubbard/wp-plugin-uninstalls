<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('happierleads_settings_script_val');
delete_site_option('happierleads_settings_script_val');
delete_option('happierleads_script_val');
delete_site_option('happierleads_script_val');

