<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BLIMWI_settings');
delete_site_option('BLIMWI_settings');
delete_option('blimwi_import_completed');
delete_site_option('blimwi_import_completed');
delete_option('blimwi_rating_data');
delete_site_option('blimwi_rating_data');

