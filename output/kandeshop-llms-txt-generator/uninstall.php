<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kandlms_options');
delete_site_option('kandlms_options');

// Delete Transients
delete_transient('kandlms_admin_notice');
delete_site_transient('kandlms_admin_notice');

