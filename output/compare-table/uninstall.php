<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ruigehond_plugin_error');
delete_site_option('ruigehond_plugin_error');
delete_option('ruigehond014');
delete_site_option('ruigehond014');

