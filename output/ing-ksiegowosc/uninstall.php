<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ing_ksiegowosc_api_key');
delete_site_option('ing_ksiegowosc_api_key');
delete_option('ing_ksiegowosc_tax_option_meta');
delete_site_option('ing_ksiegowosc_tax_option_meta');
delete_option('ing_ksiegowosc_db_schema');
delete_site_option('ing_ksiegowosc_db_schema');

