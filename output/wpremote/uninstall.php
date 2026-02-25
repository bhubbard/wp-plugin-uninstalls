<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_plugin_theme_update_emails');
delete_site_option('auto_plugin_theme_update_emails');

