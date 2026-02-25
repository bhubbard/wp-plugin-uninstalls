<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdihtreb_settings');
delete_site_option('mdihtreb_settings');
delete_option('mdi_settings');
delete_site_option('mdi_settings');

