<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hbapp_honeybadger_settings');
delete_site_option('hbapp_honeybadger_settings');

