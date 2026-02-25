<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbfa_settings');
delete_site_option('cbfa_settings');
delete_option('cbfa_configured');
delete_site_option('cbfa_configured');

