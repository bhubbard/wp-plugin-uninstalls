<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwc_coupon_exporter_errors');
delete_site_option('rwc_coupon_exporter_errors');
delete_option('rwc_coupon_exporter_activated');
delete_site_option('rwc_coupon_exporter_activated');

