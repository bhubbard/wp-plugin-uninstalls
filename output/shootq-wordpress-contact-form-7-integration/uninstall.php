<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shootq-api-key');
delete_site_option('shootq-api-key');
delete_option('shootq-brand-abbreviation');
delete_site_option('shootq-brand-abbreviation');
delete_option('shootq-aus-dates');
delete_site_option('shootq-aus-dates');

