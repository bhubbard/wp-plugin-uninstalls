<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shareaid_clicks');
delete_site_option('shareaid_clicks');
delete_option('shareaid_settings');
delete_site_option('shareaid_settings');

