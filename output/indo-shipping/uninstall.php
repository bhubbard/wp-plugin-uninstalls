<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpe_ishipp_base_location');
delete_site_option('wpe_ishipp_base_location');
delete_option('wpe_ishipp_base_location_code');
delete_site_option('wpe_ishipp_base_location_code');

