<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nes_cdc_version');
delete_site_option('nes_cdc_version');
delete_option('nes_cdc_settings');
delete_site_option('nes_cdc_settings');

