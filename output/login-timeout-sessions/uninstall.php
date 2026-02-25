<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_timeout_sessions');
delete_site_option('login_timeout_sessions');

// Delete Transients
delete_transient('lts_settings_repaired');
delete_site_transient('lts_settings_repaired');

