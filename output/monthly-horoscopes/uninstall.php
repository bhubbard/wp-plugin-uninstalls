<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('horoscopes_options');
delete_site_option('horoscopes_options');
delete_option('generatedapikey');
delete_site_option('generatedapikey');
delete_option('initialnumbermonths');
delete_site_option('initialnumbermonths');

