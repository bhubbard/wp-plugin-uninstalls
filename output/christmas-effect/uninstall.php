<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chreff_settings');
delete_site_option('chreff_settings');
delete_option('ce_settings');
delete_site_option('ce_settings');

