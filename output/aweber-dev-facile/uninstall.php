<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aweber_devfacile_oauth_id');
delete_site_option('aweber_devfacile_oauth_id');
delete_option('aweber_devfacile_oauth_removed');
delete_site_option('aweber_devfacile_oauth_removed');
delete_option('aweber_devfacile_settings_lists');
delete_site_option('aweber_devfacile_settings_lists');

