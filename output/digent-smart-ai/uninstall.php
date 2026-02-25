<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dgnts_settings');
delete_site_option('dgnts_settings');
delete_option('dgnts_api_key');
delete_site_option('dgnts_api_key');
delete_option('dgnts_system_prompt');
delete_site_option('dgnts_system_prompt');

