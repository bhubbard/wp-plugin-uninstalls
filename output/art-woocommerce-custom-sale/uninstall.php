<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awoos_format');
delete_site_option('awoos_format');
delete_option('awoos_custom_label');
delete_site_option('awoos_custom_label');
delete_option('awoos_percent_label');
delete_site_option('awoos_percent_label');
delete_option('awoos_percent_after_before');
delete_site_option('awoos_percent_after_before');
delete_option('awoos_price_label');
delete_site_option('awoos_price_label');
delete_option('awoos_price_after_before');
delete_site_option('awoos_price_after_before');

