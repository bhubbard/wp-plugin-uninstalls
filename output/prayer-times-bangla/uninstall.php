<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prayer_times_bn_language');
delete_site_option('prayer_times_bn_language');
delete_option('prayer_times_bn_width_value');
delete_site_option('prayer_times_bn_width_value');
delete_option('prayer_times_bn_width_unit');
delete_site_option('prayer_times_bn_width_unit');

