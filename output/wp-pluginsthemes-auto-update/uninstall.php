<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpptau_themes_auto_update');
delete_site_option('wpptau_themes_auto_update');
delete_option('wpptau_plugins_auto_update');
delete_site_option('wpptau_plugins_auto_update');

