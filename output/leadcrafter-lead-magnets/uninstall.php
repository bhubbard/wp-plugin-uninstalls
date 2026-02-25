<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leadcrafter_api_secret');
delete_site_option('leadcrafter_api_secret');
delete_option('leadcrafter_form_id');
delete_site_option('leadcrafter_form_id');
delete_option('leadcrafter_fallback_email');
delete_site_option('leadcrafter_fallback_email');

