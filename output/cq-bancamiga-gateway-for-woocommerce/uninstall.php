<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('centralquality_bancamiga_settings');
delete_site_option('centralquality_bancamiga_settings');

