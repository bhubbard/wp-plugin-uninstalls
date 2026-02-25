<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hcal_options');
delete_site_option('hcal_options');
delete_option('language_rplc');
delete_site_option('language_rplc');

