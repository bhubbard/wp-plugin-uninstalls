<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('websquad_cookies_settings_option_name');
delete_site_option('websquad_cookies_settings_option_name');

