<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uniqselprotb_settings');
delete_site_option('uniqselprotb_settings');
delete_option('uniqselprotb_style');
delete_site_option('uniqselprotb_style');

