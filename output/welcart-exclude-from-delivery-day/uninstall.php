<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc-exclude-delivery');
delete_site_option('wc-exclude-delivery');
delete_option('wc-week');
delete_site_option('wc-week');

