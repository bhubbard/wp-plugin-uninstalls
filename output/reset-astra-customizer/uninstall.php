<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('astra-typography-presets');
delete_site_option('astra-typography-presets');
delete_option('astra-color-palettes');
delete_site_option('astra-color-palettes');
delete_option('astra_admin_settings');
delete_site_option('astra_admin_settings');

