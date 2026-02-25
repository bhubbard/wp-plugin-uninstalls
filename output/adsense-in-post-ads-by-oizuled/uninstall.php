<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aip_settings');
delete_site_option('aip_settings');
delete_option('oizuled-adsense-unit-a');
delete_site_option('oizuled-adsense-unit-a');
delete_option('oizuled-adsense-unit-b');
delete_site_option('oizuled-adsense-unit-b');
delete_option('oizuled-adsense-unit-c');
delete_site_option('oizuled-adsense-unit-c');

