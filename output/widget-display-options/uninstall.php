<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdo-plugin-settings-fields');
delete_site_option('wdo-plugin-settings-fields');

