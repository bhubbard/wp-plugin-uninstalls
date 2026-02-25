<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trml_default_language');
delete_site_option('trml_default_language');
delete_option('trml_api_key');
delete_site_option('trml_api_key');
delete_option('trml_languages');
delete_site_option('trml_languages');

