<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posthaste_display');
delete_site_option('posthaste_display');
delete_option('posthaste_fields');
delete_site_option('posthaste_fields');

