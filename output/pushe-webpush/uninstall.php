<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushe_webpush_settings');
delete_site_option('pushe_webpush_settings');
delete_option('pushe_webpush_modal_options');
delete_site_option('pushe_webpush_modal_options');
delete_option('pushe_webpush_bell_options');
delete_site_option('pushe_webpush_bell_options');

