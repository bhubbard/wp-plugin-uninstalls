<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocs_settings');
delete_site_option('ocs_settings');
delete_option('ocs_settings_isconfigured');
delete_site_option('ocs_settings_isconfigured');
delete_option('ocs_settings_ismigrated');
delete_site_option('ocs_settings_ismigrated');

