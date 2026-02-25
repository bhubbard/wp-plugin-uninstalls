<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('af-plugin-version');
delete_site_option('af-plugin-version');
delete_option('af-key');
delete_site_option('af-key');
delete_option('af-key-au');
delete_site_option('af-key-au');
delete_option('af-debug');
delete_site_option('af-debug');
delete_option('af-widget-enabled');
delete_site_option('af-widget-enabled');
delete_option('af-widget-options');
delete_site_option('af-widget-options');
delete_option('af-default-country');
delete_site_option('af-default-country');
delete_option('af-au-widget-options');
delete_site_option('af-au-widget-options');
delete_option('af-au-widget-pobox');
delete_site_option('af-au-widget-pobox');
delete_option('af-nz-widget-options');
delete_site_option('af-nz-widget-options');
delete_option('af-nz-widget-pobox');
delete_site_option('af-nz-widget-pobox');
delete_option('af-ev-widget-enabled');
delete_site_option('af-ev-widget-enabled');
delete_option('af-ev-widget-public');
delete_site_option('af-ev-widget-public');
delete_option('af-ev-widget-role');
delete_site_option('af-ev-widget-role');
delete_option('af-ev-widget-disposable');
delete_site_option('af-ev-widget-disposable');
delete_option('af-ev-widget-unverified');
delete_site_option('af-ev-widget-unverified');
delete_option('af-ev-widget-rules');
delete_site_option('af-ev-widget-rules');
delete_option('af-pv-widget-enabled');
delete_site_option('af-pv-widget-enabled');
delete_option('af-pv-widget-default-country');
delete_site_option('af-pv-widget-default-country');
delete_option('af-pv-widget-allowed-countries');
delete_site_option('af-pv-widget-allowed-countries');
delete_option('af-pv-widget-non-mobile');
delete_site_option('af-pv-widget-non-mobile');
delete_option('af-pv-widget-disallowed-country');
delete_site_option('af-pv-widget-disallowed-country');
delete_option('af-pv-widget-unverified');
delete_site_option('af-pv-widget-unverified');
delete_option('af-pv-widget-format-number');
delete_site_option('af-pv-widget-format-number');
delete_option('af-pv-widget-rules');
delete_site_option('af-pv-widget-rules');

