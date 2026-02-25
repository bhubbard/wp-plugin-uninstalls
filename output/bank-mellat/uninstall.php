<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bank_mellat_settings_fields_arrays');
delete_site_option('bank_mellat_settings_fields_arrays');
delete_option('bank_mellat_db_version');
delete_site_option('bank_mellat_db_version');

